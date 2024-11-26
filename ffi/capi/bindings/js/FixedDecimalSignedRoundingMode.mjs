// generated by diplomat-tool
import wasm from "./diplomat-wasm.mjs";
import * as diplomatRuntime from "./diplomat-runtime.mjs";

// Base enumerator definition
/** Mode used in a rounding operation for signed numbers.
*
*See the [Rust documentation for `SignedRoundingMode`](https://docs.rs/fixed_decimal/latest/fixed_decimal/enum.SignedRoundingMode.html) for more information.
*/
export class FixedDecimalSignedRoundingMode {
    #value = undefined;

    static #values = new Map([
        ["Expand", 0],
        ["Trunc", 1],
        ["HalfExpand", 2],
        ["HalfTrunc", 3],
        ["HalfEven", 4],
        ["Ceil", 5],
        ["Floor", 6],
        ["HalfCeil", 7],
        ["HalfFloor", 8]
    ]);

    static getAllEntries() {
        return FixedDecimalSignedRoundingMode.#values.entries();
    }

    constructor(value) {
        if (arguments.length > 1 && arguments[0] === diplomatRuntime.internalConstructor) {
            // We pass in two internalConstructor arguments to create *new*
            // instances of this type, otherwise the enums are treated as singletons.
            if (arguments[1] === diplomatRuntime.internalConstructor ) {
                this.#value = arguments[2];
                return;
            }
            return FixedDecimalSignedRoundingMode.#objectValues[arguments[1]];
        }

        if (value instanceof FixedDecimalSignedRoundingMode) {
            return value;
        }

        let intVal = FixedDecimalSignedRoundingMode.#values.get(value);

        // Nullish check, checks for null or undefined
        if (intVal == null) {
            return FixedDecimalSignedRoundingMode.#objectValues[intVal];
        }

        throw TypeError(value + " is not a FixedDecimalSignedRoundingMode and does not correspond to any of its enumerator values.");
    }

    get value() {
        return [...FixedDecimalSignedRoundingMode.#values.keys()][this.#value];
    }

    get ffiValue() {
        return this.#value;
    }
    static #objectValues = [
        new FixedDecimalSignedRoundingMode(diplomatRuntime.internalConstructor, diplomatRuntime.internalConstructor, 0),
        new FixedDecimalSignedRoundingMode(diplomatRuntime.internalConstructor, diplomatRuntime.internalConstructor, 1),
        new FixedDecimalSignedRoundingMode(diplomatRuntime.internalConstructor, diplomatRuntime.internalConstructor, 2),
        new FixedDecimalSignedRoundingMode(diplomatRuntime.internalConstructor, diplomatRuntime.internalConstructor, 3),
        new FixedDecimalSignedRoundingMode(diplomatRuntime.internalConstructor, diplomatRuntime.internalConstructor, 4),
        new FixedDecimalSignedRoundingMode(diplomatRuntime.internalConstructor, diplomatRuntime.internalConstructor, 5),
        new FixedDecimalSignedRoundingMode(diplomatRuntime.internalConstructor, diplomatRuntime.internalConstructor, 6),
        new FixedDecimalSignedRoundingMode(diplomatRuntime.internalConstructor, diplomatRuntime.internalConstructor, 7),
        new FixedDecimalSignedRoundingMode(diplomatRuntime.internalConstructor, diplomatRuntime.internalConstructor, 8),
    ];

    static Expand = FixedDecimalSignedRoundingMode.#objectValues[0];
    static Trunc = FixedDecimalSignedRoundingMode.#objectValues[1];
    static HalfExpand = FixedDecimalSignedRoundingMode.#objectValues[2];
    static HalfTrunc = FixedDecimalSignedRoundingMode.#objectValues[3];
    static HalfEven = FixedDecimalSignedRoundingMode.#objectValues[4];
    static Ceil = FixedDecimalSignedRoundingMode.#objectValues[5];
    static Floor = FixedDecimalSignedRoundingMode.#objectValues[6];
    static HalfCeil = FixedDecimalSignedRoundingMode.#objectValues[7];
    static HalfFloor = FixedDecimalSignedRoundingMode.#objectValues[8];
}