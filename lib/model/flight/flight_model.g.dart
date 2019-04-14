// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Flight extends Flight {
  @override
  final String ifplid;
  @override
  final String arcID;
  @override
  final String adep;
  @override
  final String ades;
  @override
  final String eobt;
  @override
  final String eobd;
  @override
  final String initialEobt;
  @override
  final String calculatedTakeOffTime;
  @override
  final String referenceCTOT;
  @override
  final String estimatedTakeOffTime;
  @override
  final BuiltList<FlightRegulationLocation> regulations;
  @override
  final String mostPenalizingRegulation;
  @override
  final String readyTime;
  @override
  final bool ready;
  @override
  final int actDla;
  @override
  final int regDla;
  @override
  final String taxiTime;
  @override
  final String aircraftType;
  @override
  final bool lateFiller;
  @override
  final bool lateUpdater;
  @override
  final String operator;
  @override
  final String operatingAircraftOperator;
  @override
  final bool isChecked;
  @override
  final bool isPriority;
  @override
  final bool isAddedToFlightImprovement;
  @override
  final bool isDemoteable;
  @override
  final bool isExcludedFromRegulation;
  @override
  final bool isForceCTOT;
  @override
  final bool isExemptedFromRAD;
  @override
  final bool isPreAgreed;
  @override
  final BuiltList<int> prioCollaborations;
  @override
  final BuiltList<int> radCollaborations;
  @override
  final BuiltList<int> paCollaborations;
  @override
  final String icaoRoute;
  @override
  final String flightState;
  @override
  final bool readyForImprovement;
  @override
  final String airTrajectoryPictureFilename;
  @override
  final BuiltList<FlightActionListElement> actionHistory;
  @override
  final BuiltList<CollaborationListElement> collaborationHistory;
  @override
  final String cdmStatus;
  @override
  final String cdmEarlyTargetTakeOffTime;
  @override
  final String cdmAOTargetTakeOffTime;
  @override
  final String cdmATCTargetTakeOffTime;
  @override
  final String cdmSequencedTargetTakeOffTime;

  factory _$Flight([void Function(FlightBuilder) updates]) =>
      (new FlightBuilder()..update(updates)).build();

  _$Flight._(
      {this.ifplid,
      this.arcID,
      this.adep,
      this.ades,
      this.eobt,
      this.eobd,
      this.initialEobt,
      this.calculatedTakeOffTime,
      this.referenceCTOT,
      this.estimatedTakeOffTime,
      this.regulations,
      this.mostPenalizingRegulation,
      this.readyTime,
      this.ready,
      this.actDla,
      this.regDla,
      this.taxiTime,
      this.aircraftType,
      this.lateFiller,
      this.lateUpdater,
      this.operator,
      this.operatingAircraftOperator,
      this.isChecked,
      this.isPriority,
      this.isAddedToFlightImprovement,
      this.isDemoteable,
      this.isExcludedFromRegulation,
      this.isForceCTOT,
      this.isExemptedFromRAD,
      this.isPreAgreed,
      this.prioCollaborations,
      this.radCollaborations,
      this.paCollaborations,
      this.icaoRoute,
      this.flightState,
      this.readyForImprovement,
      this.airTrajectoryPictureFilename,
      this.actionHistory,
      this.collaborationHistory,
      this.cdmStatus,
      this.cdmEarlyTargetTakeOffTime,
      this.cdmAOTargetTakeOffTime,
      this.cdmATCTargetTakeOffTime,
      this.cdmSequencedTargetTakeOffTime})
      : super._();

  @override
  Flight rebuild(void Function(FlightBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlightBuilder toBuilder() => new FlightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Flight &&
        ifplid == other.ifplid &&
        arcID == other.arcID &&
        adep == other.adep &&
        ades == other.ades &&
        eobt == other.eobt &&
        eobd == other.eobd &&
        initialEobt == other.initialEobt &&
        calculatedTakeOffTime == other.calculatedTakeOffTime &&
        referenceCTOT == other.referenceCTOT &&
        estimatedTakeOffTime == other.estimatedTakeOffTime &&
        regulations == other.regulations &&
        mostPenalizingRegulation == other.mostPenalizingRegulation &&
        readyTime == other.readyTime &&
        ready == other.ready &&
        actDla == other.actDla &&
        regDla == other.regDla &&
        taxiTime == other.taxiTime &&
        aircraftType == other.aircraftType &&
        lateFiller == other.lateFiller &&
        lateUpdater == other.lateUpdater &&
        operator == other.operator &&
        operatingAircraftOperator == other.operatingAircraftOperator &&
        isChecked == other.isChecked &&
        isPriority == other.isPriority &&
        isAddedToFlightImprovement == other.isAddedToFlightImprovement &&
        isDemoteable == other.isDemoteable &&
        isExcludedFromRegulation == other.isExcludedFromRegulation &&
        isForceCTOT == other.isForceCTOT &&
        isExemptedFromRAD == other.isExemptedFromRAD &&
        isPreAgreed == other.isPreAgreed &&
        prioCollaborations == other.prioCollaborations &&
        radCollaborations == other.radCollaborations &&
        paCollaborations == other.paCollaborations &&
        icaoRoute == other.icaoRoute &&
        flightState == other.flightState &&
        readyForImprovement == other.readyForImprovement &&
        airTrajectoryPictureFilename == other.airTrajectoryPictureFilename &&
        actionHistory == other.actionHistory &&
        collaborationHistory == other.collaborationHistory &&
        cdmStatus == other.cdmStatus &&
        cdmEarlyTargetTakeOffTime == other.cdmEarlyTargetTakeOffTime &&
        cdmAOTargetTakeOffTime == other.cdmAOTargetTakeOffTime &&
        cdmATCTargetTakeOffTime == other.cdmATCTargetTakeOffTime &&
        cdmSequencedTargetTakeOffTime == other.cdmSequencedTargetTakeOffTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, ifplid.hashCode), arcID.hashCode), adep.hashCode), ades.hashCode), eobt.hashCode), eobd.hashCode), initialEobt.hashCode), calculatedTakeOffTime.hashCode), referenceCTOT.hashCode), estimatedTakeOffTime.hashCode), regulations.hashCode), mostPenalizingRegulation.hashCode), readyTime.hashCode), ready.hashCode), actDla.hashCode), regDla.hashCode), taxiTime.hashCode), aircraftType.hashCode), lateFiller.hashCode), lateUpdater.hashCode), operator.hashCode), operatingAircraftOperator.hashCode), isChecked.hashCode), isPriority.hashCode), isAddedToFlightImprovement.hashCode),
                                                                                isDemoteable.hashCode),
                                                                            isExcludedFromRegulation.hashCode),
                                                                        isForceCTOT.hashCode),
                                                                    isExemptedFromRAD.hashCode),
                                                                isPreAgreed.hashCode),
                                                            prioCollaborations.hashCode),
                                                        radCollaborations.hashCode),
                                                    paCollaborations.hashCode),
                                                icaoRoute.hashCode),
                                            flightState.hashCode),
                                        readyForImprovement.hashCode),
                                    airTrajectoryPictureFilename.hashCode),
                                actionHistory.hashCode),
                            collaborationHistory.hashCode),
                        cdmStatus.hashCode),
                    cdmEarlyTargetTakeOffTime.hashCode),
                cdmAOTargetTakeOffTime.hashCode),
            cdmATCTargetTakeOffTime.hashCode),
        cdmSequencedTargetTakeOffTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Flight')
          ..add('ifplid', ifplid)
          ..add('arcID', arcID)
          ..add('adep', adep)
          ..add('ades', ades)
          ..add('eobt', eobt)
          ..add('eobd', eobd)
          ..add('initialEobt', initialEobt)
          ..add('calculatedTakeOffTime', calculatedTakeOffTime)
          ..add('referenceCTOT', referenceCTOT)
          ..add('estimatedTakeOffTime', estimatedTakeOffTime)
          ..add('regulations', regulations)
          ..add('mostPenalizingRegulation', mostPenalizingRegulation)
          ..add('readyTime', readyTime)
          ..add('ready', ready)
          ..add('actDla', actDla)
          ..add('regDla', regDla)
          ..add('taxiTime', taxiTime)
          ..add('aircraftType', aircraftType)
          ..add('lateFiller', lateFiller)
          ..add('lateUpdater', lateUpdater)
          ..add('operator', operator)
          ..add('operatingAircraftOperator', operatingAircraftOperator)
          ..add('isChecked', isChecked)
          ..add('isPriority', isPriority)
          ..add('isAddedToFlightImprovement', isAddedToFlightImprovement)
          ..add('isDemoteable', isDemoteable)
          ..add('isExcludedFromRegulation', isExcludedFromRegulation)
          ..add('isForceCTOT', isForceCTOT)
          ..add('isExemptedFromRAD', isExemptedFromRAD)
          ..add('isPreAgreed', isPreAgreed)
          ..add('prioCollaborations', prioCollaborations)
          ..add('radCollaborations', radCollaborations)
          ..add('paCollaborations', paCollaborations)
          ..add('icaoRoute', icaoRoute)
          ..add('flightState', flightState)
          ..add('readyForImprovement', readyForImprovement)
          ..add('airTrajectoryPictureFilename', airTrajectoryPictureFilename)
          ..add('actionHistory', actionHistory)
          ..add('collaborationHistory', collaborationHistory)
          ..add('cdmStatus', cdmStatus)
          ..add('cdmEarlyTargetTakeOffTime', cdmEarlyTargetTakeOffTime)
          ..add('cdmAOTargetTakeOffTime', cdmAOTargetTakeOffTime)
          ..add('cdmATCTargetTakeOffTime', cdmATCTargetTakeOffTime)
          ..add('cdmSequencedTargetTakeOffTime', cdmSequencedTargetTakeOffTime))
        .toString();
  }
}

class FlightBuilder implements Builder<Flight, FlightBuilder> {
  _$Flight _$v;

  String _ifplid;
  String get ifplid => _$this._ifplid;
  set ifplid(String ifplid) => _$this._ifplid = ifplid;

  String _arcID;
  String get arcID => _$this._arcID;
  set arcID(String arcID) => _$this._arcID = arcID;

  String _adep;
  String get adep => _$this._adep;
  set adep(String adep) => _$this._adep = adep;

  String _ades;
  String get ades => _$this._ades;
  set ades(String ades) => _$this._ades = ades;

  String _eobt;
  String get eobt => _$this._eobt;
  set eobt(String eobt) => _$this._eobt = eobt;

  String _eobd;
  String get eobd => _$this._eobd;
  set eobd(String eobd) => _$this._eobd = eobd;

  String _initialEobt;
  String get initialEobt => _$this._initialEobt;
  set initialEobt(String initialEobt) => _$this._initialEobt = initialEobt;

  String _calculatedTakeOffTime;
  String get calculatedTakeOffTime => _$this._calculatedTakeOffTime;
  set calculatedTakeOffTime(String calculatedTakeOffTime) =>
      _$this._calculatedTakeOffTime = calculatedTakeOffTime;

  String _referenceCTOT;
  String get referenceCTOT => _$this._referenceCTOT;
  set referenceCTOT(String referenceCTOT) =>
      _$this._referenceCTOT = referenceCTOT;

  String _estimatedTakeOffTime;
  String get estimatedTakeOffTime => _$this._estimatedTakeOffTime;
  set estimatedTakeOffTime(String estimatedTakeOffTime) =>
      _$this._estimatedTakeOffTime = estimatedTakeOffTime;

  ListBuilder<FlightRegulationLocation> _regulations;
  ListBuilder<FlightRegulationLocation> get regulations =>
      _$this._regulations ??= new ListBuilder<FlightRegulationLocation>();
  set regulations(ListBuilder<FlightRegulationLocation> regulations) =>
      _$this._regulations = regulations;

  String _mostPenalizingRegulation;
  String get mostPenalizingRegulation => _$this._mostPenalizingRegulation;
  set mostPenalizingRegulation(String mostPenalizingRegulation) =>
      _$this._mostPenalizingRegulation = mostPenalizingRegulation;

  String _readyTime;
  String get readyTime => _$this._readyTime;
  set readyTime(String readyTime) => _$this._readyTime = readyTime;

  bool _ready;
  bool get ready => _$this._ready;
  set ready(bool ready) => _$this._ready = ready;

  int _actDla;
  int get actDla => _$this._actDla;
  set actDla(int actDla) => _$this._actDla = actDla;

  int _regDla;
  int get regDla => _$this._regDla;
  set regDla(int regDla) => _$this._regDla = regDla;

  String _taxiTime;
  String get taxiTime => _$this._taxiTime;
  set taxiTime(String taxiTime) => _$this._taxiTime = taxiTime;

  String _aircraftType;
  String get aircraftType => _$this._aircraftType;
  set aircraftType(String aircraftType) => _$this._aircraftType = aircraftType;

  bool _lateFiller;
  bool get lateFiller => _$this._lateFiller;
  set lateFiller(bool lateFiller) => _$this._lateFiller = lateFiller;

  bool _lateUpdater;
  bool get lateUpdater => _$this._lateUpdater;
  set lateUpdater(bool lateUpdater) => _$this._lateUpdater = lateUpdater;

  String _operator;
  String get operator => _$this._operator;
  set operator(String operator) => _$this._operator = operator;

  String _operatingAircraftOperator;
  String get operatingAircraftOperator => _$this._operatingAircraftOperator;
  set operatingAircraftOperator(String operatingAircraftOperator) =>
      _$this._operatingAircraftOperator = operatingAircraftOperator;

  bool _isChecked;
  bool get isChecked => _$this._isChecked;
  set isChecked(bool isChecked) => _$this._isChecked = isChecked;

  bool _isPriority;
  bool get isPriority => _$this._isPriority;
  set isPriority(bool isPriority) => _$this._isPriority = isPriority;

  bool _isAddedToFlightImprovement;
  bool get isAddedToFlightImprovement => _$this._isAddedToFlightImprovement;
  set isAddedToFlightImprovement(bool isAddedToFlightImprovement) =>
      _$this._isAddedToFlightImprovement = isAddedToFlightImprovement;

  bool _isDemoteable;
  bool get isDemoteable => _$this._isDemoteable;
  set isDemoteable(bool isDemoteable) => _$this._isDemoteable = isDemoteable;

  bool _isExcludedFromRegulation;
  bool get isExcludedFromRegulation => _$this._isExcludedFromRegulation;
  set isExcludedFromRegulation(bool isExcludedFromRegulation) =>
      _$this._isExcludedFromRegulation = isExcludedFromRegulation;

  bool _isForceCTOT;
  bool get isForceCTOT => _$this._isForceCTOT;
  set isForceCTOT(bool isForceCTOT) => _$this._isForceCTOT = isForceCTOT;

  bool _isExemptedFromRAD;
  bool get isExemptedFromRAD => _$this._isExemptedFromRAD;
  set isExemptedFromRAD(bool isExemptedFromRAD) =>
      _$this._isExemptedFromRAD = isExemptedFromRAD;

  bool _isPreAgreed;
  bool get isPreAgreed => _$this._isPreAgreed;
  set isPreAgreed(bool isPreAgreed) => _$this._isPreAgreed = isPreAgreed;

  ListBuilder<int> _prioCollaborations;
  ListBuilder<int> get prioCollaborations =>
      _$this._prioCollaborations ??= new ListBuilder<int>();
  set prioCollaborations(ListBuilder<int> prioCollaborations) =>
      _$this._prioCollaborations = prioCollaborations;

  ListBuilder<int> _radCollaborations;
  ListBuilder<int> get radCollaborations =>
      _$this._radCollaborations ??= new ListBuilder<int>();
  set radCollaborations(ListBuilder<int> radCollaborations) =>
      _$this._radCollaborations = radCollaborations;

  ListBuilder<int> _paCollaborations;
  ListBuilder<int> get paCollaborations =>
      _$this._paCollaborations ??= new ListBuilder<int>();
  set paCollaborations(ListBuilder<int> paCollaborations) =>
      _$this._paCollaborations = paCollaborations;

  String _icaoRoute;
  String get icaoRoute => _$this._icaoRoute;
  set icaoRoute(String icaoRoute) => _$this._icaoRoute = icaoRoute;

  String _flightState;
  String get flightState => _$this._flightState;
  set flightState(String flightState) => _$this._flightState = flightState;

  bool _readyForImprovement;
  bool get readyForImprovement => _$this._readyForImprovement;
  set readyForImprovement(bool readyForImprovement) =>
      _$this._readyForImprovement = readyForImprovement;

  String _airTrajectoryPictureFilename;
  String get airTrajectoryPictureFilename =>
      _$this._airTrajectoryPictureFilename;
  set airTrajectoryPictureFilename(String airTrajectoryPictureFilename) =>
      _$this._airTrajectoryPictureFilename = airTrajectoryPictureFilename;

  ListBuilder<FlightActionListElement> _actionHistory;
  ListBuilder<FlightActionListElement> get actionHistory =>
      _$this._actionHistory ??= new ListBuilder<FlightActionListElement>();
  set actionHistory(ListBuilder<FlightActionListElement> actionHistory) =>
      _$this._actionHistory = actionHistory;

  ListBuilder<CollaborationListElement> _collaborationHistory;
  ListBuilder<CollaborationListElement> get collaborationHistory =>
      _$this._collaborationHistory ??=
          new ListBuilder<CollaborationListElement>();
  set collaborationHistory(
          ListBuilder<CollaborationListElement> collaborationHistory) =>
      _$this._collaborationHistory = collaborationHistory;

  String _cdmStatus;
  String get cdmStatus => _$this._cdmStatus;
  set cdmStatus(String cdmStatus) => _$this._cdmStatus = cdmStatus;

  String _cdmEarlyTargetTakeOffTime;
  String get cdmEarlyTargetTakeOffTime => _$this._cdmEarlyTargetTakeOffTime;
  set cdmEarlyTargetTakeOffTime(String cdmEarlyTargetTakeOffTime) =>
      _$this._cdmEarlyTargetTakeOffTime = cdmEarlyTargetTakeOffTime;

  String _cdmAOTargetTakeOffTime;
  String get cdmAOTargetTakeOffTime => _$this._cdmAOTargetTakeOffTime;
  set cdmAOTargetTakeOffTime(String cdmAOTargetTakeOffTime) =>
      _$this._cdmAOTargetTakeOffTime = cdmAOTargetTakeOffTime;

  String _cdmATCTargetTakeOffTime;
  String get cdmATCTargetTakeOffTime => _$this._cdmATCTargetTakeOffTime;
  set cdmATCTargetTakeOffTime(String cdmATCTargetTakeOffTime) =>
      _$this._cdmATCTargetTakeOffTime = cdmATCTargetTakeOffTime;

  String _cdmSequencedTargetTakeOffTime;
  String get cdmSequencedTargetTakeOffTime =>
      _$this._cdmSequencedTargetTakeOffTime;
  set cdmSequencedTargetTakeOffTime(String cdmSequencedTargetTakeOffTime) =>
      _$this._cdmSequencedTargetTakeOffTime = cdmSequencedTargetTakeOffTime;

  FlightBuilder();

  FlightBuilder get _$this {
    if (_$v != null) {
      _ifplid = _$v.ifplid;
      _arcID = _$v.arcID;
      _adep = _$v.adep;
      _ades = _$v.ades;
      _eobt = _$v.eobt;
      _eobd = _$v.eobd;
      _initialEobt = _$v.initialEobt;
      _calculatedTakeOffTime = _$v.calculatedTakeOffTime;
      _referenceCTOT = _$v.referenceCTOT;
      _estimatedTakeOffTime = _$v.estimatedTakeOffTime;
      _regulations = _$v.regulations?.toBuilder();
      _mostPenalizingRegulation = _$v.mostPenalizingRegulation;
      _readyTime = _$v.readyTime;
      _ready = _$v.ready;
      _actDla = _$v.actDla;
      _regDla = _$v.regDla;
      _taxiTime = _$v.taxiTime;
      _aircraftType = _$v.aircraftType;
      _lateFiller = _$v.lateFiller;
      _lateUpdater = _$v.lateUpdater;
      _operator = _$v.operator;
      _operatingAircraftOperator = _$v.operatingAircraftOperator;
      _isChecked = _$v.isChecked;
      _isPriority = _$v.isPriority;
      _isAddedToFlightImprovement = _$v.isAddedToFlightImprovement;
      _isDemoteable = _$v.isDemoteable;
      _isExcludedFromRegulation = _$v.isExcludedFromRegulation;
      _isForceCTOT = _$v.isForceCTOT;
      _isExemptedFromRAD = _$v.isExemptedFromRAD;
      _isPreAgreed = _$v.isPreAgreed;
      _prioCollaborations = _$v.prioCollaborations?.toBuilder();
      _radCollaborations = _$v.radCollaborations?.toBuilder();
      _paCollaborations = _$v.paCollaborations?.toBuilder();
      _icaoRoute = _$v.icaoRoute;
      _flightState = _$v.flightState;
      _readyForImprovement = _$v.readyForImprovement;
      _airTrajectoryPictureFilename = _$v.airTrajectoryPictureFilename;
      _actionHistory = _$v.actionHistory?.toBuilder();
      _collaborationHistory = _$v.collaborationHistory?.toBuilder();
      _cdmStatus = _$v.cdmStatus;
      _cdmEarlyTargetTakeOffTime = _$v.cdmEarlyTargetTakeOffTime;
      _cdmAOTargetTakeOffTime = _$v.cdmAOTargetTakeOffTime;
      _cdmATCTargetTakeOffTime = _$v.cdmATCTargetTakeOffTime;
      _cdmSequencedTargetTakeOffTime = _$v.cdmSequencedTargetTakeOffTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Flight other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Flight;
  }

  @override
  void update(void Function(FlightBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Flight build() {
    _$Flight _$result;
    try {
      _$result = _$v ??
          new _$Flight._(
              ifplid: ifplid,
              arcID: arcID,
              adep: adep,
              ades: ades,
              eobt: eobt,
              eobd: eobd,
              initialEobt: initialEobt,
              calculatedTakeOffTime: calculatedTakeOffTime,
              referenceCTOT: referenceCTOT,
              estimatedTakeOffTime: estimatedTakeOffTime,
              regulations: _regulations?.build(),
              mostPenalizingRegulation: mostPenalizingRegulation,
              readyTime: readyTime,
              ready: ready,
              actDla: actDla,
              regDla: regDla,
              taxiTime: taxiTime,
              aircraftType: aircraftType,
              lateFiller: lateFiller,
              lateUpdater: lateUpdater,
              operator: operator,
              operatingAircraftOperator: operatingAircraftOperator,
              isChecked: isChecked,
              isPriority: isPriority,
              isAddedToFlightImprovement: isAddedToFlightImprovement,
              isDemoteable: isDemoteable,
              isExcludedFromRegulation: isExcludedFromRegulation,
              isForceCTOT: isForceCTOT,
              isExemptedFromRAD: isExemptedFromRAD,
              isPreAgreed: isPreAgreed,
              prioCollaborations: _prioCollaborations?.build(),
              radCollaborations: _radCollaborations?.build(),
              paCollaborations: _paCollaborations?.build(),
              icaoRoute: icaoRoute,
              flightState: flightState,
              readyForImprovement: readyForImprovement,
              airTrajectoryPictureFilename: airTrajectoryPictureFilename,
              actionHistory: _actionHistory?.build(),
              collaborationHistory: _collaborationHistory?.build(),
              cdmStatus: cdmStatus,
              cdmEarlyTargetTakeOffTime: cdmEarlyTargetTakeOffTime,
              cdmAOTargetTakeOffTime: cdmAOTargetTakeOffTime,
              cdmATCTargetTakeOffTime: cdmATCTargetTakeOffTime,
              cdmSequencedTargetTakeOffTime: cdmSequencedTargetTakeOffTime);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'regulations';
        _regulations?.build();

        _$failedField = 'prioCollaborations';
        _prioCollaborations?.build();
        _$failedField = 'radCollaborations';
        _radCollaborations?.build();
        _$failedField = 'paCollaborations';
        _paCollaborations?.build();

        _$failedField = 'actionHistory';
        _actionHistory?.build();
        _$failedField = 'collaborationHistory';
        _collaborationHistory?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Flight', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
