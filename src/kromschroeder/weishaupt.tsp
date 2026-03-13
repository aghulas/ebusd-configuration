import "./weishaupt.js";

/**
 * Define the extension message ID to be combined with a base ID.
 * @param dd message ID extensions parts.
 */
extern dec crcext(target: TypeSpec.Reflection.Model, ...dd: valueof uint8[]);
extern dec appendext(target: TypeSpec.Reflection.Model, ll: valueof uint8, ...dd: valueof uint8[]);
