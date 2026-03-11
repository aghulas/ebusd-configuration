function computeCrc(data) {
    if (data.length === 0)
        return 0;
    // Start the CRC with the very first byte (Python: crc = data_bytes[0])
    let crc = data[0] & 0xFF;
    // Loop through the remaining bytes (Python: for next_byte in data_bytes[1:])
    for (let i = 1; i < data.length; i++) {
        const nextByte = data[i];
        // 1. Process the CURRENT crc through 8 shift cycles 
        // BEFORE XORing the next byte
        for (let j = 0; j < 8; j++) {
            if (crc & 0x80) {
                crc = ((crc << 1) ^ 0x5C) & 0xFF;
            }
            else {
                crc = (crc << 1) & 0xFF;
            }
        }
        // 2. NOW XOR the shifted result with the next byte
        crc ^= nextByte;
        crc &= 0xFF;
    }
    return crc;
}
export function $weishauptExt(context, target, ...args) {
    const rawBytes = args.map(a => a.value);
    const crc = computeCrc(rawBytes);
    const finalBytes = [crc, ...rawBytes];
    const stateKey = Symbol.for("Ebus:ext");
    context.program.stateMap(stateKey).set(target, finalBytes);
    console.log(`[Weishaupt] Input: [${rawBytes.map(b => b.toString(16).padStart(2, '0')).join(' ')}]`);
    console.log(`[Weishaupt] Result CRC: ${crc.toString(16).padStart(2, '0')}`);
    console.log(`[Weishaupt] Final @ext: ${finalBytes.map(b => b.toString(16).padStart(2, '0')).join(' ')}`);
}
