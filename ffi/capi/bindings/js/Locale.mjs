// generated by diplomat-tool
import { LocaleParseError } from "./LocaleParseError.mjs"
import wasm from "./diplomat-wasm.mjs";
import * as diplomatRuntime from "./diplomat-runtime.mjs";


/** An ICU4X Locale, capable of representing strings like `"en-US"`.
*
*See the [Rust documentation for `Locale`](https://docs.rs/icu/latest/icu/locale/struct.Locale.html) for more information.
*/

const Locale_box_destroy_registry = new FinalizationRegistry((ptr) => {
    wasm.icu4x_Locale_destroy_mv1(ptr);
});
export class Locale {
    // Internal ptr reference:
    #ptr = null;

    // Lifetimes are only to keep dependencies alive.
    // Since JS won't garbage collect until there are no incoming edges.
    #selfEdge = [];
    
    
    constructor(ptr, selfEdge) {
        
        this.#ptr = ptr;
        this.#selfEdge = selfEdge;
        // Unconditionally register to destroy when this object is ready to garbage collect.
        Locale_box_destroy_registry.register(this, this.#ptr);
    }

    get ffiValue() {
        return this.#ptr;
    }


    static createFromString(name) {
        
        const nameSlice = diplomatRuntime.DiplomatBuf.str8(wasm, name);
        
        const diplomat_receive_buffer = wasm.diplomat_alloc(5, 4);
        const result = wasm.icu4x_Locale_create_from_string_mv1(diplomat_receive_buffer, nameSlice.ptr, nameSlice.size);
    
        try {
    
            if (!diplomatRuntime.resultFlag(wasm, diplomat_receive_buffer, 4)) {
                const cause = LocaleParseError[Array.from(LocaleParseError.values.keys())[diplomatRuntime.enumDiscriminant(wasm, diplomat_receive_buffer)]];
                throw new Error('LocaleParseError: ' + cause.value, { cause });
            }
            return new Locale(diplomatRuntime.ptrRead(wasm, diplomat_receive_buffer), []);
        } finally {
        
            nameSlice.free();
        
            wasm.diplomat_free(diplomat_receive_buffer, 5, 4);
        
        }
    }

    static createUnd() {
        const result = wasm.icu4x_Locale_create_und_mv1();
    
        try {
    
            return new Locale(result, []);
        } finally {
        
        }
    }

    clone() {
        const result = wasm.icu4x_Locale_clone_mv1(this.ffiValue);
    
        try {
    
            return new Locale(result, []);
        } finally {
        
        }
    }

    get basename() {
        
        const write = wasm.diplomat_buffer_write_create(0);
        wasm.icu4x_Locale_basename_mv1(this.ffiValue, write);
    
        try {
    
            return diplomatRuntime.readString8(wasm, wasm.diplomat_buffer_write_get_bytes(write), wasm.diplomat_buffer_write_len(write));
        } finally {
        
            wasm.diplomat_buffer_write_destroy(write);
        
        }
    }

    getUnicodeExtension(s) {
        
        const sSlice = diplomatRuntime.DiplomatBuf.str8(wasm, s);
        
        const write = wasm.diplomat_buffer_write_create(0);
        const result = wasm.icu4x_Locale_get_unicode_extension_mv1(this.ffiValue, sSlice.ptr, sSlice.size, write);
    
        try {
    
            return result == 0 ? null : diplomatRuntime.readString8(wasm, wasm.diplomat_buffer_write_get_bytes(write), wasm.diplomat_buffer_write_len(write));
        } finally {
        
            sSlice.free();
        
            wasm.diplomat_buffer_write_destroy(write);
        
        }
    }

    get language() {
        
        const write = wasm.diplomat_buffer_write_create(0);
        wasm.icu4x_Locale_language_mv1(this.ffiValue, write);
    
        try {
    
            return diplomatRuntime.readString8(wasm, wasm.diplomat_buffer_write_get_bytes(write), wasm.diplomat_buffer_write_len(write));
        } finally {
        
            wasm.diplomat_buffer_write_destroy(write);
        
        }
    }

    set language(s) {
        
        const sSlice = diplomatRuntime.DiplomatBuf.str8(wasm, s);
        
        const diplomat_receive_buffer = wasm.diplomat_alloc(5, 4);
        const result = wasm.icu4x_Locale_set_language_mv1(diplomat_receive_buffer, this.ffiValue, sSlice.ptr, sSlice.size);
    
        try {
    
            if (!diplomatRuntime.resultFlag(wasm, diplomat_receive_buffer, 4)) {
                const cause = LocaleParseError[Array.from(LocaleParseError.values.keys())[diplomatRuntime.enumDiscriminant(wasm, diplomat_receive_buffer)]];
                throw new Error('LocaleParseError: ' + cause.value, { cause });
            }
    
        } finally {
        
            sSlice.free();
        
            wasm.diplomat_free(diplomat_receive_buffer, 5, 4);
        
        }
    }

    get region() {
        
        const write = wasm.diplomat_buffer_write_create(0);
        const result = wasm.icu4x_Locale_region_mv1(this.ffiValue, write);
    
        try {
    
            return result == 0 ? null : diplomatRuntime.readString8(wasm, wasm.diplomat_buffer_write_get_bytes(write), wasm.diplomat_buffer_write_len(write));
        } finally {
        
            wasm.diplomat_buffer_write_destroy(write);
        
        }
    }

    set region(s) {
        
        const sSlice = diplomatRuntime.DiplomatBuf.str8(wasm, s);
        
        const diplomat_receive_buffer = wasm.diplomat_alloc(5, 4);
        const result = wasm.icu4x_Locale_set_region_mv1(diplomat_receive_buffer, this.ffiValue, sSlice.ptr, sSlice.size);
    
        try {
    
            if (!diplomatRuntime.resultFlag(wasm, diplomat_receive_buffer, 4)) {
                const cause = LocaleParseError[Array.from(LocaleParseError.values.keys())[diplomatRuntime.enumDiscriminant(wasm, diplomat_receive_buffer)]];
                throw new Error('LocaleParseError: ' + cause.value, { cause });
            }
    
        } finally {
        
            sSlice.free();
        
            wasm.diplomat_free(diplomat_receive_buffer, 5, 4);
        
        }
    }

    get script() {
        
        const write = wasm.diplomat_buffer_write_create(0);
        const result = wasm.icu4x_Locale_script_mv1(this.ffiValue, write);
    
        try {
    
            return result == 0 ? null : diplomatRuntime.readString8(wasm, wasm.diplomat_buffer_write_get_bytes(write), wasm.diplomat_buffer_write_len(write));
        } finally {
        
            wasm.diplomat_buffer_write_destroy(write);
        
        }
    }

    set script(s) {
        
        const sSlice = diplomatRuntime.DiplomatBuf.str8(wasm, s);
        
        const diplomat_receive_buffer = wasm.diplomat_alloc(5, 4);
        const result = wasm.icu4x_Locale_set_script_mv1(diplomat_receive_buffer, this.ffiValue, sSlice.ptr, sSlice.size);
    
        try {
    
            if (!diplomatRuntime.resultFlag(wasm, diplomat_receive_buffer, 4)) {
                const cause = LocaleParseError[Array.from(LocaleParseError.values.keys())[diplomatRuntime.enumDiscriminant(wasm, diplomat_receive_buffer)]];
                throw new Error('LocaleParseError: ' + cause.value, { cause });
            }
    
        } finally {
        
            sSlice.free();
        
            wasm.diplomat_free(diplomat_receive_buffer, 5, 4);
        
        }
    }

    static canonicalize(s) {
        
        const sSlice = diplomatRuntime.DiplomatBuf.str8(wasm, s);
        
        const diplomat_receive_buffer = wasm.diplomat_alloc(5, 4);
        
        const write = wasm.diplomat_buffer_write_create(0);
        const result = wasm.icu4x_Locale_canonicalize_mv1(diplomat_receive_buffer, sSlice.ptr, sSlice.size, write);
    
        try {
    
            if (!diplomatRuntime.resultFlag(wasm, diplomat_receive_buffer, 4)) {
                const cause = LocaleParseError[Array.from(LocaleParseError.values.keys())[diplomatRuntime.enumDiscriminant(wasm, diplomat_receive_buffer)]];
                throw new Error('LocaleParseError: ' + cause.value, { cause });
            }
            return diplomatRuntime.readString8(wasm, wasm.diplomat_buffer_write_get_bytes(write), wasm.diplomat_buffer_write_len(write));
        } finally {
        
            sSlice.free();
        
            wasm.diplomat_free(diplomat_receive_buffer, 5, 4);
        
            wasm.diplomat_buffer_write_destroy(write);
        
        }
    }

    toString() {
        
        const write = wasm.diplomat_buffer_write_create(0);
        wasm.icu4x_Locale_to_string_mv1(this.ffiValue, write);
    
        try {
    
            return diplomatRuntime.readString8(wasm, wasm.diplomat_buffer_write_get_bytes(write), wasm.diplomat_buffer_write_len(write));
        } finally {
        
            wasm.diplomat_buffer_write_destroy(write);
        
        }
    }

    normalizingEq(other) {
        
        const otherSlice = diplomatRuntime.DiplomatBuf.str8(wasm, other);
        const result = wasm.icu4x_Locale_normalizing_eq_mv1(this.ffiValue, otherSlice.ptr, otherSlice.size);
    
        try {
    
            return result;
        } finally {
        
            otherSlice.free();
        
        }
    }

    compareToString(other) {
        
        const otherSlice = diplomatRuntime.DiplomatBuf.str8(wasm, other);
        const result = wasm.icu4x_Locale_compare_to_string_mv1(this.ffiValue, otherSlice.ptr, otherSlice.size);
    
        try {
    
            return result;
        } finally {
        
            otherSlice.free();
        
        }
    }

    compareTo(other) {
        const result = wasm.icu4x_Locale_compare_to_mv1(this.ffiValue, other.ffiValue);
    
        try {
    
            return result;
        } finally {
        
        }
    }

    

}