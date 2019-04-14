// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regulation_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlightRegulationLocation extends FlightRegulationLocation {
  @override
  final String regulationId;
  @override
  final String referenceLocationType;
  @override
  final String referenceLocationId;
  @override
  final bool toConfirm;

  factory _$FlightRegulationLocation(
          [void Function(FlightRegulationLocationBuilder) updates]) =>
      (new FlightRegulationLocationBuilder()..update(updates)).build();

  _$FlightRegulationLocation._(
      {this.regulationId,
      this.referenceLocationType,
      this.referenceLocationId,
      this.toConfirm})
      : super._() {
    if (regulationId == null) {
      throw new BuiltValueNullFieldError(
          'FlightRegulationLocation', 'regulationId');
    }
    if (referenceLocationType == null) {
      throw new BuiltValueNullFieldError(
          'FlightRegulationLocation', 'referenceLocationType');
    }
    if (referenceLocationId == null) {
      throw new BuiltValueNullFieldError(
          'FlightRegulationLocation', 'referenceLocationId');
    }
    if (toConfirm == null) {
      throw new BuiltValueNullFieldError(
          'FlightRegulationLocation', 'toConfirm');
    }
  }

  @override
  FlightRegulationLocation rebuild(
          void Function(FlightRegulationLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlightRegulationLocationBuilder toBuilder() =>
      new FlightRegulationLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlightRegulationLocation &&
        regulationId == other.regulationId &&
        referenceLocationType == other.referenceLocationType &&
        referenceLocationId == other.referenceLocationId &&
        toConfirm == other.toConfirm;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, regulationId.hashCode), referenceLocationType.hashCode),
            referenceLocationId.hashCode),
        toConfirm.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FlightRegulationLocation')
          ..add('regulationId', regulationId)
          ..add('referenceLocationType', referenceLocationType)
          ..add('referenceLocationId', referenceLocationId)
          ..add('toConfirm', toConfirm))
        .toString();
  }
}

class FlightRegulationLocationBuilder
    implements
        Builder<FlightRegulationLocation, FlightRegulationLocationBuilder> {
  _$FlightRegulationLocation _$v;

  String _regulationId;
  String get regulationId => _$this._regulationId;
  set regulationId(String regulationId) => _$this._regulationId = regulationId;

  String _referenceLocationType;
  String get referenceLocationType => _$this._referenceLocationType;
  set referenceLocationType(String referenceLocationType) =>
      _$this._referenceLocationType = referenceLocationType;

  String _referenceLocationId;
  String get referenceLocationId => _$this._referenceLocationId;
  set referenceLocationId(String referenceLocationId) =>
      _$this._referenceLocationId = referenceLocationId;

  bool _toConfirm;
  bool get toConfirm => _$this._toConfirm;
  set toConfirm(bool toConfirm) => _$this._toConfirm = toConfirm;

  FlightRegulationLocationBuilder();

  FlightRegulationLocationBuilder get _$this {
    if (_$v != null) {
      _regulationId = _$v.regulationId;
      _referenceLocationType = _$v.referenceLocationType;
      _referenceLocationId = _$v.referenceLocationId;
      _toConfirm = _$v.toConfirm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlightRegulationLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FlightRegulationLocation;
  }

  @override
  void update(void Function(FlightRegulationLocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FlightRegulationLocation build() {
    final _$result = _$v ??
        new _$FlightRegulationLocation._(
            regulationId: regulationId,
            referenceLocationType: referenceLocationType,
            referenceLocationId: referenceLocationId,
            toConfirm: toConfirm);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
