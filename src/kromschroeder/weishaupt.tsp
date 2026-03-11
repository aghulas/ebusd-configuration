import "./weishaupt.js";

// This keeps the decorator in the global namespace, matching our JS export perfectly
extern dec addcrc(target: TypeSpec.Reflection.Model, ...args: unknown[]);