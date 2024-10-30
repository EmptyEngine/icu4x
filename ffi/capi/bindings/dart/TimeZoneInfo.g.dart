// generated by diplomat-tool

part of 'lib.g.dart';

/// See the [Rust documentation for `TimeZoneInfo`](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneInfo.html) for more information.
final class TimeZoneInfo implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _ffi;

  // These are "used" in the sense that they keep dependencies alive
  // ignore: unused_field
  final core.List<Object> _selfEdge;

  // This takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  TimeZoneInfo._fromFfi(this._ffi, this._selfEdge) {
    if (_selfEdge.isEmpty) {
      _finalizer.attach(this, _ffi.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_icu4x_TimeZoneInfo_destroy_mv1));

  /// Creates a time zone with no information.
  ///
  /// See the [Rust documentation for `unknown`](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneInfo.html#method.unknown) for more information.
  factory TimeZoneInfo.unknown() {
    final result = _icu4x_TimeZoneInfo_unknown_mv1();
    return TimeZoneInfo._fromFfi(result, []);
  }

  /// Creates a time zone for UTC (Coordinated Universal Time).
  ///
  /// See the [Rust documentation for `utc`](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneInfo.html#method.utc) for more information.
  factory TimeZoneInfo.utc() {
    final result = _icu4x_TimeZoneInfo_utc_mv1();
    return TimeZoneInfo._fromFfi(result, []);
  }

  /// Creates a time zone.
  factory TimeZoneInfo(String bcp47Id, int offsetSeconds, bool dst) {
    final temp = _FinalizedArena();
    final result = _icu4x_TimeZoneInfo_from_parts_mv1(bcp47Id._utf8AllocIn(temp.arena), offsetSeconds, dst);
    return TimeZoneInfo._fromFfi(result, []);
  }

  /// Sets the `offset` field from offset seconds.
  ///
  /// Errors if the offset seconds are out of range.
  ///
  /// See the [Rust documentation for `try_from_seconds`](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html#method.try_from_seconds) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html)
  ///
  /// Throws [TimeZoneInvalidOffsetError] on failure.
  void trySetOffsetSeconds(int offsetSeconds) {
    final result = _icu4x_TimeZoneInfo_try_set_offset_seconds_mv1(_ffi, offsetSeconds);
    if (!result.isOk) {
      throw TimeZoneInvalidOffsetError();
    }
    
  }

  /// Sets the `offset` field from offset as eighths of an hour.
  ///
  /// See the [Rust documentation for `from_eighths_of_hour`](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html#method.from_eighths_of_hour) for more information.
  void setOffsetEighthsOfHour(int offsetEighthsOfHour) {
    _icu4x_TimeZoneInfo_set_offset_eighths_of_hour_mv1(_ffi, offsetEighthsOfHour);
  }

  /// Sets the `offset` field from a string.
  ///
  /// See the [Rust documentation for `try_from_str`](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html#method.try_from_str) for more information.
  ///
  /// Throws [TimeZoneInvalidOffsetError] on failure.
  void trySetOffsetStr(String offset) {
    final temp = _FinalizedArena();
    final result = _icu4x_TimeZoneInfo_try_set_offset_str_mv1(_ffi, offset._utf8AllocIn(temp.arena));
    if (!result.isOk) {
      throw TimeZoneInvalidOffsetError();
    }
    
  }

  /// Gets the `offset` field from offset as eighths of an hour.
  ///
  /// See the [Rust documentation for `to_eighths_of_hour`](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html#method.to_eighths_of_hour) for more information.
  int? offsetEighthsOfHour() {
    final result = _icu4x_TimeZoneInfo_offset_eighths_of_hour_mv1(_ffi);
    if (!result.isOk) {
      return null;
    }
    return result.union.ok;
  }

  /// Clears the `offset` field.
  ///
  /// See the [Rust documentation for `offset_seconds`](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html#method.offset_seconds) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html)
  void clearOffset() {
    _icu4x_TimeZoneInfo_clear_offset_mv1(_ffi);
  }

  /// Returns the value of the `offset` field as offset seconds.
  ///
  /// Returns null if the `offset` field is empty.
  ///
  /// See the [Rust documentation for `offset`](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneInfo.html#method.offset) for more information.
  ///
  /// See the [Rust documentation for `to_seconds`](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html#method.to_seconds) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html)
  int? get offsetSeconds {
    final result = _icu4x_TimeZoneInfo_offset_seconds_mv1(_ffi);
    if (!result.isOk) {
      return null;
    }
    return result.union.ok;
  }

  /// Returns whether the `offset` field is positive.
  ///
  /// Returns null if the `offset` field is empty.
  ///
  /// See the [Rust documentation for `is_non_negative`](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html#method.is_non_negative) for more information.
  bool? get isOffsetNonNegative {
    final result = _icu4x_TimeZoneInfo_is_offset_non_negative_mv1(_ffi);
    if (!result.isOk) {
      return null;
    }
    return result.union.ok;
  }

  /// Returns whether the `offset` field is zero.
  ///
  /// Returns null if the `offset` field is empty (which is not the same as zero).
  ///
  /// See the [Rust documentation for `is_zero`](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html#method.is_zero) for more information.
  bool? get isOffsetZero {
    final result = _icu4x_TimeZoneInfo_is_offset_zero_mv1(_ffi);
    if (!result.isOk) {
      return null;
    }
    return result.union.ok;
  }

  /// Returns the hours part of the the `offset` field.
  ///
  /// Returns null if the `offset` field is empty.
  ///
  /// See the [Rust documentation for `hours_part`](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html#method.hours_part) for more information.
  int? get offsetHoursPart {
    final result = _icu4x_TimeZoneInfo_offset_hours_part_mv1(_ffi);
    if (!result.isOk) {
      return null;
    }
    return result.union.ok;
  }

  /// Returns the minutes part of the the `offset` field.
  ///
  /// Returns null if the `offset` field is empty.
  ///
  /// See the [Rust documentation for `minutes_part`](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html#method.minutes_part) for more information.
  int? get offsetMinutesPart {
    final result = _icu4x_TimeZoneInfo_offset_minutes_part_mv1(_ffi);
    if (!result.isOk) {
      return null;
    }
    return result.union.ok;
  }

  /// Returns the seconds part of the the `offset` field.
  ///
  /// Returns null if the `offset` field is empty.
  ///
  /// See the [Rust documentation for `seconds_part`](https://docs.rs/icu/latest/icu/timezone/struct.UtcOffset.html#method.seconds_part) for more information.
  int? get offsetSecondsPart {
    final result = _icu4x_TimeZoneInfo_offset_seconds_part_mv1(_ffi);
    if (!result.isOk) {
      return null;
    }
    return result.union.ok;
  }

  /// Sets the `time_zone_id` field from a BCP-47 string.
  ///
  /// Errors if the string is not a valid BCP-47 time zone ID.
  ///
  /// See the [Rust documentation for `time_zone_id`](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneInfo.html#method.time_zone_id) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneBcp47Id.html)
  void setTimeZoneId(String id) {
    final temp = _FinalizedArena();
    _icu4x_TimeZoneInfo_set_time_zone_id_mv1(_ffi, id._utf8AllocIn(temp.arena));
  }

  /// Sets the `time_zone_id` field from an IANA string by looking up
  /// the corresponding BCP-47 string.
  void setIanaTimeZoneId(TimeZoneIdMapper mapper, String id) {
    final temp = _FinalizedArena();
    _icu4x_TimeZoneInfo_set_iana_time_zone_id_mv1(_ffi, mapper._ffi, id._utf8AllocIn(temp.arena));
  }

  /// Writes the value of the `time_zone_id` field as a string.
  ///
  /// Returns null if the `time_zone_id` field is empty.
  ///
  /// See the [Rust documentation for `time_zone_id`](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneInfo.html#method.time_zone_id) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneBcp47Id.html)
  String get timeZoneId {
    final write = _Write();
    _icu4x_TimeZoneInfo_time_zone_id_mv1(_ffi, write._ffi);
    return write.finalize();
  }

  /// Sets the `zone_variant` field from a string.
  ///
  /// Returns null if the string is not a valid zone variant.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html)
  bool trySetZoneVariant(String id) {
    final temp = _FinalizedArena();
    final result = _icu4x_TimeZoneInfo_try_set_zone_variant_mv1(_ffi, id._utf8AllocIn(temp.arena));
    return result.isOk;
  }

  /// Clears the `zone_variant` field.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html)
  void clearZoneVariant() {
    _icu4x_TimeZoneInfo_clear_zone_variant_mv1(_ffi);
  }

  /// Writes the value of the `zone_variant` field as a string.
  ///
  /// Returns null if the `zone_variant` field is empty.
  ///
  /// See the [Rust documentation for `zone_variant`](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneInfo.html#method.zone_variant) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html)
  String? get zoneVariant {
    final write = _Write();
    final result = _icu4x_TimeZoneInfo_zone_variant_mv1(_ffi, write._ffi);
    if (!result.isOk) {
      return null;
    }
    return write.finalize();
  }

  /// Sets the `zone_variant` field to "standard" time, which may or may
  /// not correspond to a display name with "Standard" in its name.
  ///
  /// See the [Rust documentation for `standard`](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html#method.standard) for more information.
  void setStandardTime() {
    _icu4x_TimeZoneInfo_set_standard_time_mv1(_ffi);
  }

  /// Sets the `zone_variant` field to "daylight" time, which may or may
  /// not correspond to a display name with "Daylight" in its name.
  ///
  /// See the [Rust documentation for `daylight`](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html#method.daylight) for more information.
  void setDaylightTime() {
    _icu4x_TimeZoneInfo_set_daylight_time_mv1(_ffi);
  }

  /// Returns whether the `zone_variant` field is standard time.
  ///
  /// Returns null if the `zone_variant` field is empty.
  ///
  /// See the [Rust documentation for `standard`](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html#method.standard) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneInfo.html#method.zone_variant)
  bool? get isStandardTime {
    final result = _icu4x_TimeZoneInfo_is_standard_time_mv1(_ffi);
    if (!result.isOk) {
      return null;
    }
    return result.union.ok;
  }

  /// Returns whether the `zone_variant` field is daylight time.
  ///
  /// Returns null if the `zone_variant` field is empty.
  ///
  /// See the [Rust documentation for `daylight`](https://docs.rs/icu/latest/icu/timezone/struct.ZoneVariant.html#method.daylight) for more information.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneInfo.html#method.zone_variant)
  bool? get isDaylightTime {
    final result = _icu4x_TimeZoneInfo_is_daylight_time_mv1(_ffi);
    if (!result.isOk) {
      return null;
    }
    return result.union.ok;
  }

  /// Sets the `local_time` field.
  void setLocalTime(IsoDateTime datetime) {
    _icu4x_TimeZoneInfo_set_local_time_mv1(_ffi, datetime._ffi);
  }

  /// Clears the `local_time` field.
  void clearLocalTime() {
    _icu4x_TimeZoneInfo_clear_local_time_mv1(_ffi);
  }

  /// Returns a copy of the `local_time` field.
  ///
  /// Additional information: [1](https://docs.rs/icu/latest/icu/timezone/struct.TimeZoneInfo.html#method.local_time)
  IsoDateTime? getLocalTime() {
    final result = _icu4x_TimeZoneInfo_get_local_time_mv1(_ffi);
    return result.address == 0 ? null : IsoDateTime._fromFfi(result, []);
  }
}

@meta.RecordUse()
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_destroy_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_TimeZoneInfo_destroy_mv1(ffi.Pointer<ffi.Void> self);

@meta.RecordUse()
@ffi.Native<ffi.Pointer<ffi.Opaque> Function()>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_unknown_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_TimeZoneInfo_unknown_mv1();

@meta.RecordUse()
@ffi.Native<ffi.Pointer<ffi.Opaque> Function()>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_utc_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_TimeZoneInfo_utc_mv1();

@meta.RecordUse()
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(_SliceUtf8, ffi.Int32, ffi.Bool)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_from_parts_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_TimeZoneInfo_from_parts_mv1(_SliceUtf8 bcp47Id, int offsetSeconds, bool dst);

@meta.RecordUse()
@ffi.Native<_ResultVoidTimeZoneInvalidOffsetErrorFfi Function(ffi.Pointer<ffi.Opaque>, ffi.Int32)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_try_set_offset_seconds_mv1')
// ignore: non_constant_identifier_names
external _ResultVoidTimeZoneInvalidOffsetErrorFfi _icu4x_TimeZoneInfo_try_set_offset_seconds_mv1(ffi.Pointer<ffi.Opaque> self, int offsetSeconds);

@meta.RecordUse()
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Int8)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_set_offset_eighths_of_hour_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_TimeZoneInfo_set_offset_eighths_of_hour_mv1(ffi.Pointer<ffi.Opaque> self, int offsetEighthsOfHour);

@meta.RecordUse()
@ffi.Native<_ResultVoidTimeZoneInvalidOffsetErrorFfi Function(ffi.Pointer<ffi.Opaque>, _SliceUtf8)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_try_set_offset_str_mv1')
// ignore: non_constant_identifier_names
external _ResultVoidTimeZoneInvalidOffsetErrorFfi _icu4x_TimeZoneInfo_try_set_offset_str_mv1(ffi.Pointer<ffi.Opaque> self, _SliceUtf8 offset);

@meta.RecordUse()
@ffi.Native<_ResultInt8Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_offset_eighths_of_hour_mv1')
// ignore: non_constant_identifier_names
external _ResultInt8Void _icu4x_TimeZoneInfo_offset_eighths_of_hour_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_clear_offset_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_TimeZoneInfo_clear_offset_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<_ResultInt32Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_offset_seconds_mv1')
// ignore: non_constant_identifier_names
external _ResultInt32Void _icu4x_TimeZoneInfo_offset_seconds_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<_ResultBoolVoid Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_is_offset_non_negative_mv1')
// ignore: non_constant_identifier_names
external _ResultBoolVoid _icu4x_TimeZoneInfo_is_offset_non_negative_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<_ResultBoolVoid Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_is_offset_zero_mv1')
// ignore: non_constant_identifier_names
external _ResultBoolVoid _icu4x_TimeZoneInfo_is_offset_zero_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<_ResultInt32Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_offset_hours_part_mv1')
// ignore: non_constant_identifier_names
external _ResultInt32Void _icu4x_TimeZoneInfo_offset_hours_part_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<_ResultUint32Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_offset_minutes_part_mv1')
// ignore: non_constant_identifier_names
external _ResultUint32Void _icu4x_TimeZoneInfo_offset_minutes_part_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<_ResultUint32Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_offset_seconds_part_mv1')
// ignore: non_constant_identifier_names
external _ResultUint32Void _icu4x_TimeZoneInfo_offset_seconds_part_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, _SliceUtf8)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_set_time_zone_id_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_TimeZoneInfo_set_time_zone_id_mv1(ffi.Pointer<ffi.Opaque> self, _SliceUtf8 id);

@meta.RecordUse()
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, _SliceUtf8)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_set_iana_time_zone_id_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_TimeZoneInfo_set_iana_time_zone_id_mv1(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> mapper, _SliceUtf8 id);

@meta.RecordUse()
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_time_zone_id_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_TimeZoneInfo_time_zone_id_mv1(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> write);

@meta.RecordUse()
@ffi.Native<_ResultVoidVoid Function(ffi.Pointer<ffi.Opaque>, _SliceUtf8)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_try_set_zone_variant_mv1')
// ignore: non_constant_identifier_names
external _ResultVoidVoid _icu4x_TimeZoneInfo_try_set_zone_variant_mv1(ffi.Pointer<ffi.Opaque> self, _SliceUtf8 id);

@meta.RecordUse()
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_clear_zone_variant_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_TimeZoneInfo_clear_zone_variant_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<_ResultVoidVoid Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_zone_variant_mv1')
// ignore: non_constant_identifier_names
external _ResultVoidVoid _icu4x_TimeZoneInfo_zone_variant_mv1(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> write);

@meta.RecordUse()
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_set_standard_time_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_TimeZoneInfo_set_standard_time_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_set_daylight_time_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_TimeZoneInfo_set_daylight_time_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<_ResultBoolVoid Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_is_standard_time_mv1')
// ignore: non_constant_identifier_names
external _ResultBoolVoid _icu4x_TimeZoneInfo_is_standard_time_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<_ResultBoolVoid Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_is_daylight_time_mv1')
// ignore: non_constant_identifier_names
external _ResultBoolVoid _icu4x_TimeZoneInfo_is_daylight_time_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_set_local_time_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_TimeZoneInfo_set_local_time_mv1(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> datetime);

@meta.RecordUse()
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_clear_local_time_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_TimeZoneInfo_clear_local_time_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.RecordUse()
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_TimeZoneInfo_get_local_time_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_TimeZoneInfo_get_local_time_mv1(ffi.Pointer<ffi.Opaque> self);
