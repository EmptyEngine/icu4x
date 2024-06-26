// This file is part of ICU4X. For terms of use, please see the file
// called LICENSE at the top level of the ICU4X source tree
// (online at: https://github.com/unicode-org/icu4x/blob/main/LICENSE ).

// This file is generated by running `cargo test --test gen_greek_to_me --features compiled_data,datagen
//
// Do not edit manually

// All u8s in this file are PackedGreekPrecomposedLetterDatas, see parent module

/// Data for characters in U+370-U+3FF
pub(crate) const DATA_370: [u8; 0x90] = [128, 128, 128, 128, 0, 0, 128, 128, 0, 0, 128, 128, 128, 128, 0, 128, 0, 0, 0, 0, 0, 0, 65, 0, 66, 67, 68, 0, 69, 0, 70, 71, 100, 1, 128, 128, 128, 2, 128, 3, 128, 4, 128, 128, 128, 128, 128, 5, 128, 129, 0, 128, 128, 6, 128, 128, 128, 7, 36, 38, 65, 66, 67, 68, 102, 1, 128, 128, 128, 2, 128, 3, 128, 4, 128, 128, 128, 128, 128, 5, 128, 129, 128, 128, 128, 6, 128, 128, 128, 7, 36, 38, 69, 70, 71, 128, 128, 128, 8, 72, 40, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 129, 128, 128, 128, 2, 0, 128, 128, 128, 128, 128, 128, 128, 128, 128];
/// Data for characters in U+1F00-U+1FFF
pub(crate) const DATA_1F00: [u8; 0xfd] = [1, 1, 65, 65, 65, 65, 65, 65, 1, 1, 65, 65, 65, 65, 65, 65, 2, 2, 66, 66, 66, 66, 0, 0, 2, 2, 66, 66, 66, 66, 0, 0, 3, 3, 67, 67, 67, 67, 67, 67, 3, 3, 67, 67, 67, 67, 67, 67, 4, 4, 68, 68, 68, 68, 68, 68, 4, 4, 68, 68, 68, 68, 68, 68, 5, 5, 69, 69, 69, 69, 0, 0, 5, 5, 69, 69, 69, 69, 0, 0, 6, 6, 70, 70, 70, 70, 70, 70, 0, 6, 0, 70, 0, 70, 0, 70, 7, 7, 71, 71, 71, 71, 71, 71, 7, 7, 71, 71, 71, 71, 71, 71, 65, 65, 66, 66, 67, 67, 68, 68, 69, 69, 70, 70, 71, 71, 0, 0, 17, 17, 81, 81, 81, 81, 81, 81, 17, 17, 81, 81, 81, 81, 81, 81, 19, 19, 83, 83, 83, 83, 83, 83, 19, 19, 83, 83, 83, 83, 83, 83, 23, 23, 87, 87, 87, 87, 87, 87, 23, 23, 87, 87, 87, 87, 87, 87, 1, 1, 81, 17, 81, 0, 65, 81, 1, 1, 65, 65, 17, 0, 4, 0, 0, 0, 83, 19, 83, 0, 67, 83, 66, 66, 67, 67, 19, 0, 0, 0, 4, 4, 100, 100, 0, 0, 68, 100, 4, 4, 68, 68, 0, 0, 0, 0, 6, 6, 102, 102, 129, 129, 70, 102, 6, 6, 70, 70, 129, 0, 0, 0, 0, 0, 87, 23, 87, 0, 71, 87, 69, 69, 71, 71, 23];

/// Characters like the ohm sign that do not belong in the two blocks above
pub(crate) fn match_extras(ch: char) -> Option<u8> {
    Some(match ch {
        'Ω' => 7,

        _ => return None
    })
}

