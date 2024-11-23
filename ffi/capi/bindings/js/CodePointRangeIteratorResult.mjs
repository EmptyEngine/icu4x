// generated by diplomat-tool
import wasm from "./diplomat-wasm.mjs";
import * as diplomatRuntime from "./diplomat-runtime.mjs";


/** Result of a single iteration of [`CodePointRangeIterator`].
*Logically can be considered to be an `Option<RangeInclusive<DiplomatChar>>`,
*
*`start` and `end` represent an inclusive range of code points [start, end],
*and `done` will be true if the iterator has already finished. The last contentful
*iteration will NOT produce a range done=true, in other words `start` and `end` are useful
*values if and only if `done=false`.
*/
export class CodePointRangeIteratorResult {

    #start;
    get start()  {
        return this.#start;
    }
    

    #end;
    get end()  {
        return this.#end;
    }
    

    #done;
    get done()  {
        return this.#done;
    }
    
    constructor(structObj, internalConstructor) {
        if (typeof structObj !== "object") {
            throw new Error("CodePointRangeIteratorResult's constructor takes an object of CodePointRangeIteratorResult's fields.");
        }

        if (internalConstructor !== diplomatRuntime.internalConstructor) {
            throw new Error("CodePointRangeIteratorResult is an out struct and can only be created internally.");
        }
        if ("start" in structObj) {
            this.#start = structObj.start;
        } else {
            throw new Error("Missing required field start.");
        }

        if ("end" in structObj) {
            this.#end = structObj.end;
        } else {
            throw new Error("Missing required field end.");
        }

        if ("done" in structObj) {
            this.#done = structObj.done;
        } else {
            throw new Error("Missing required field done.");
        }

    }

    // Return this struct in FFI function friendly format.
    // Returns an array that can be expanded with spread syntax (...)
    
    _intoFFI(
        functionCleanupArena,
        appendArrayMap
    ) {
        return [this.#start, this.#end, this.#done, /* [3 x i8] padding */ 0, 0, 0 /* end padding */]
    }

    _writeToArrayBuffer(
        arrayBuffer,
        offset,
        functionCleanupArena,
        appendArrayMap
    ) {
        diplomatRuntime.writeToArrayBuffer(arrayBuffer, offset + 0, this.#start, Uint32Array);
        diplomatRuntime.writeToArrayBuffer(arrayBuffer, offset + 4, this.#end, Uint32Array);
        diplomatRuntime.writeToArrayBuffer(arrayBuffer, offset + 8, this.#done, Uint8Array);
    }

    // This struct contains borrowed fields, so this takes in a list of
    // "edges" corresponding to where each lifetime's data may have been borrowed from
    // and passes it down to individual fields containing the borrow.
    // This method does not attempt to handle any dependencies between lifetimes, the caller
    // should handle this when constructing edge arrays.
    static _fromFFI(internalConstructor, ptr) {
        if (internalConstructor !== diplomatRuntime.internalConstructor) {
            throw new Error("CodePointRangeIteratorResult._fromFFI is not meant to be called externally. Please use the default constructor.");
        }
        var structObj = {};
        const startDeref = (new Uint32Array(wasm.memory.buffer, ptr, 1))[0];
        structObj.start = startDeref;
        const endDeref = (new Uint32Array(wasm.memory.buffer, ptr + 4, 1))[0];
        structObj.end = endDeref;
        const doneDeref = (new Uint8Array(wasm.memory.buffer, ptr + 8, 1))[0] === 1;
        structObj.done = doneDeref;

        return new CodePointRangeIteratorResult(structObj, internalConstructor);
    }
}