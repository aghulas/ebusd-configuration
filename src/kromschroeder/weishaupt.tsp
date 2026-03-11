import "./weishaupt.js";

// This keeps the decorator in the global namespace, matching our JS export perfectly
extern dec crcext(target: TypeSpec.Reflection.Model, ...args: unknown[]);