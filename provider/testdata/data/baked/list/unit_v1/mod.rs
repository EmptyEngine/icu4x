// @generated
#![cfg(feature = "icu_list")]
type DataStruct = <::icu_list::provider::UnitListV1Marker as ::icu_provider::DataMarker>::Yokeable;
pub fn lookup(locale: &icu_provider::DataLocale) -> Option<&'static DataStruct> {
    static KEYS: [&str; 19usize] = [
        "ar", "ar-EG", "bn", "ccp", "en", "en-001", "en-ZA", "es", "es-AR", "fil", "fr", "ja",
        "ru", "sr", "sr-Cyrl", "sr-Latn", "th", "tr", "und",
    ];
    static DATA: [&DataStruct; 19usize] = [
        &AR, &AR, &BN, &BN, &EN, &EN, &EN, &ES, &ES, &EN, &FR, &JA, &RU, &SR, &SR, &SR_LATN, &TH,
        &RU, &BN,
    ];
    KEYS.binary_search_by(|k| locale.strict_cmp(k.as_bytes()).reverse())
        .ok()
        .map(|i| unsafe { *DATA.get_unchecked(i) })
}
static AR: DataStruct = include!("ar.rs.data");
static BN: DataStruct = include!("bn.rs.data");
static EN: DataStruct = include!("en.rs.data");
static ES: DataStruct = include!("es.rs.data");
static FR: DataStruct = include!("fr.rs.data");
static JA: DataStruct = include!("ja.rs.data");
static RU: DataStruct = include!("ru.rs.data");
static SR_LATN: DataStruct = include!("sr-Latn.rs.data");
static SR: DataStruct = include!("sr.rs.data");
static TH: DataStruct = include!("th.rs.data");