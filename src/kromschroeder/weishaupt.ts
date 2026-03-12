import { DecoratorContext, Model } from "@typespec/compiler";

function computeCrc(data: number[]): number {
  if (!data || data.length === 0) return 0;
  let crc = data[0] & 0xFF;
  for (let i = 1; i < data.length; i++) {
    let nextByte = data[i];
    if (typeof nextByte !== 'number' || isNaN(nextByte)) nextByte = 0;
    for (let j = 0; j < 8; j++) {
      if (crc & 0x80) {
        crc = ((crc << 1) ^ 0x5C) & 0xFF;
      } else {
        crc = (crc << 1) & 0xFF;
      }
    }
    crc ^= nextByte;
    crc &= 0xFF; 
  }
  return crc;
}

export function $addcrc(context: DecoratorContext, target: Model) {
  let foundMap: Map<any, any> | null = null;
  let existingData: any = null;

  // Locate the memory map
  for (const map of (context.program as any).stateMaps.values()) {
    if (map.has(target)) {
      const val = map.get(target);
      if (val && val.isExt === true && Array.isArray(val.id)) {
        foundMap = map;
        existingData = val;
        break;
      }
    }
  }

  if (!foundMap || !existingData) return;

  const numericArgs: any[] = existingData.id;
  const rawBytes: number[] = [];
  let internalDataSymbol: symbol | null = null;
  
  // Extract the bytes
  for (const arg of numericArgs) {
    let val = NaN;
    if (typeof arg === 'number') {
       val = arg;
    } else if (arg && typeof arg === 'object') {
       if (typeof arg.asNumber === 'function') {
           val = arg.asNumber();
       } else {
           const symbols = Object.getOwnPropertySymbols(arg);
           for (const sym of symbols) {
              if (String(sym).indexOf('NumericInternalData') !== -1) {
                 internalDataSymbol = sym;
                 val = Number(arg[sym].n);
                 break;
              }
           }
       }
    }
    rawBytes.push(isNaN(val) ? 0 : val);
  }

  if (rawBytes.length === 0) return;

  // Compute the CRC
  const crc = computeCrc(rawBytes);

  // Build the new AST node securely
  const baseObj = numericArgs[0];
  const crcEntry: any = baseObj && typeof baseObj === 'object' 
    ? Object.assign(Object.create(Object.getPrototypeOf(baseObj)), baseObj)
    : {};
  
  crcEntry.value = crc;
  crcEntry.valueAsString = crc.toString();
  crcEntry.asNumber = () => crc;

  if (baseObj && typeof baseObj === 'object' && internalDataSymbol && baseObj[internalDataSymbol]) {
      crcEntry[internalDataSymbol] = { 
         ...baseObj[internalDataSymbol], 
         n: BigInt(crc) 
      };
  }

  const newIdArray = [crcEntry, ...numericArgs];

  // Overwrite the state map with a fresh object so the emitter immediately sees the change
  foundMap.set(target, { ...existingData, id: newIdArray });
}