// generated by diplomat-tool
import type { CollatorAlternateHandling } from "./CollatorAlternateHandling"
import type { CollatorBackwardSecondLevel } from "./CollatorBackwardSecondLevel"
import type { CollatorCaseFirst } from "./CollatorCaseFirst"
import type { CollatorCaseLevel } from "./CollatorCaseLevel"
import type { CollatorMaxVariable } from "./CollatorMaxVariable"
import type { CollatorNumeric } from "./CollatorNumeric"
import type { CollatorStrength } from "./CollatorStrength"
import type { pointer, char } from "./diplomat-runtime.d.ts";


/** See the [Rust documentation for `ResolvedCollatorOptions`](https://docs.rs/icu/latest/icu/collator/struct.ResolvedCollatorOptions.html) for more information.
*/
export class ResolvedCollatorOptions {
    get strength() : CollatorStrength;
    
    get alternateHandling() : CollatorAlternateHandling;
    
    get caseFirst() : CollatorCaseFirst;
    
    get maxVariable() : CollatorMaxVariable;
    
    get caseLevel() : CollatorCaseLevel;
    
    get numeric() : CollatorNumeric;
    
    get backwardSecondLevel() : CollatorBackwardSecondLevel;
    

    

}