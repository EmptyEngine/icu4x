// generated by diplomat-tool
import wasm from "./diplomat-wasm.mjs";
import * as diplomatRuntime from "./diplomat-runtime.mjs";

// Base enumerator definition
/** See the [Rust documentation for `LeadingAdjustment`](https://docs.rs/icu/latest/icu/casemap/titlecase/enum.LeadingAdjustment.html) for more information.
*/
export class LeadingAdjustment {
    #value = undefined;

    static values = new Map([
        ["Auto", 0],
        ["None", 1],
        ["ToCased", 2]
    ]);
    constructor(value) {
        if (value instanceof LeadingAdjustment) {
            this.#value = value.value;
            return;
        }

        if (LeadingAdjustment.values.has(value)) {
            this.#value = value;
            return;
        }

        throw TypeError(value + " is not a LeadingAdjustment and does not correspond to any of its enumerator values.");
    }

    get value() {
        return this.#value;
    }

    get ffiValue() {
        return LeadingAdjustment.values.get(this.#value);
    }

    static Auto = new LeadingAdjustment("Auto");

    static None = new LeadingAdjustment("None");

    static ToCased = new LeadingAdjustment("ToCased");


    

}