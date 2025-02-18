// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_form_mvu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SearchFormModel {
  LoadableValue<List<Continent>> get continents =>
      throw _privateConstructorUsedError;
  LoadableValue<String?> get selectedContinent =>
      throw _privateConstructorUsedError;
  LoadableValue<DateTimeRange?> get dateRange =>
      throw _privateConstructorUsedError;
  LoadableValue<int> get guests => throw _privateConstructorUsedError;
  bool get updatingItinerary => throw _privateConstructorUsedError;

  /// Create a copy of SearchFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchFormModelCopyWith<SearchFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFormModelCopyWith<$Res> {
  factory $SearchFormModelCopyWith(
    SearchFormModel value,
    $Res Function(SearchFormModel) then,
  ) = _$SearchFormModelCopyWithImpl<$Res, SearchFormModel>;
  @useResult
  $Res call({
    LoadableValue<List<Continent>> continents,
    LoadableValue<String?> selectedContinent,
    LoadableValue<DateTimeRange?> dateRange,
    LoadableValue<int> guests,
    bool updatingItinerary,
  });
}

/// @nodoc
class _$SearchFormModelCopyWithImpl<$Res, $Val extends SearchFormModel>
    implements $SearchFormModelCopyWith<$Res> {
  _$SearchFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continents = null,
    Object? selectedContinent = null,
    Object? dateRange = null,
    Object? guests = null,
    Object? updatingItinerary = null,
  }) {
    return _then(
      _value.copyWith(
            continents:
                null == continents
                    ? _value.continents
                    : continents // ignore: cast_nullable_to_non_nullable
                        as LoadableValue<List<Continent>>,
            selectedContinent:
                null == selectedContinent
                    ? _value.selectedContinent
                    : selectedContinent // ignore: cast_nullable_to_non_nullable
                        as LoadableValue<String?>,
            dateRange:
                null == dateRange
                    ? _value.dateRange
                    : dateRange // ignore: cast_nullable_to_non_nullable
                        as LoadableValue<DateTimeRange?>,
            guests:
                null == guests
                    ? _value.guests
                    : guests // ignore: cast_nullable_to_non_nullable
                        as LoadableValue<int>,
            updatingItinerary:
                null == updatingItinerary
                    ? _value.updatingItinerary
                    : updatingItinerary // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchFormModelImplCopyWith<$Res>
    implements $SearchFormModelCopyWith<$Res> {
  factory _$$SearchFormModelImplCopyWith(
    _$SearchFormModelImpl value,
    $Res Function(_$SearchFormModelImpl) then,
  ) = __$$SearchFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LoadableValue<List<Continent>> continents,
    LoadableValue<String?> selectedContinent,
    LoadableValue<DateTimeRange?> dateRange,
    LoadableValue<int> guests,
    bool updatingItinerary,
  });
}

/// @nodoc
class __$$SearchFormModelImplCopyWithImpl<$Res>
    extends _$SearchFormModelCopyWithImpl<$Res, _$SearchFormModelImpl>
    implements _$$SearchFormModelImplCopyWith<$Res> {
  __$$SearchFormModelImplCopyWithImpl(
    _$SearchFormModelImpl _value,
    $Res Function(_$SearchFormModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continents = null,
    Object? selectedContinent = null,
    Object? dateRange = null,
    Object? guests = null,
    Object? updatingItinerary = null,
  }) {
    return _then(
      _$SearchFormModelImpl(
        continents:
            null == continents
                ? _value.continents
                : continents // ignore: cast_nullable_to_non_nullable
                    as LoadableValue<List<Continent>>,
        selectedContinent:
            null == selectedContinent
                ? _value.selectedContinent
                : selectedContinent // ignore: cast_nullable_to_non_nullable
                    as LoadableValue<String?>,
        dateRange:
            null == dateRange
                ? _value.dateRange
                : dateRange // ignore: cast_nullable_to_non_nullable
                    as LoadableValue<DateTimeRange?>,
        guests:
            null == guests
                ? _value.guests
                : guests // ignore: cast_nullable_to_non_nullable
                    as LoadableValue<int>,
        updatingItinerary:
            null == updatingItinerary
                ? _value.updatingItinerary
                : updatingItinerary // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$SearchFormModelImpl extends _SearchFormModel {
  const _$SearchFormModelImpl({
    this.continents = const LoadableValue.loading(),
    this.selectedContinent = const LoadableValue.loading(),
    this.dateRange = const LoadableValue.loading(),
    this.guests = const LoadableValue.loading(),
    this.updatingItinerary = false,
  }) : super._();

  @override
  @JsonKey()
  final LoadableValue<List<Continent>> continents;
  @override
  @JsonKey()
  final LoadableValue<String?> selectedContinent;
  @override
  @JsonKey()
  final LoadableValue<DateTimeRange?> dateRange;
  @override
  @JsonKey()
  final LoadableValue<int> guests;
  @override
  @JsonKey()
  final bool updatingItinerary;

  @override
  String toString() {
    return 'SearchFormModel(continents: $continents, selectedContinent: $selectedContinent, dateRange: $dateRange, guests: $guests, updatingItinerary: $updatingItinerary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFormModelImpl &&
            (identical(other.continents, continents) ||
                other.continents == continents) &&
            (identical(other.selectedContinent, selectedContinent) ||
                other.selectedContinent == selectedContinent) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            (identical(other.guests, guests) || other.guests == guests) &&
            (identical(other.updatingItinerary, updatingItinerary) ||
                other.updatingItinerary == updatingItinerary));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    continents,
    selectedContinent,
    dateRange,
    guests,
    updatingItinerary,
  );

  /// Create a copy of SearchFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFormModelImplCopyWith<_$SearchFormModelImpl> get copyWith =>
      __$$SearchFormModelImplCopyWithImpl<_$SearchFormModelImpl>(
        this,
        _$identity,
      );
}

abstract class _SearchFormModel extends SearchFormModel {
  const factory _SearchFormModel({
    final LoadableValue<List<Continent>> continents,
    final LoadableValue<String?> selectedContinent,
    final LoadableValue<DateTimeRange?> dateRange,
    final LoadableValue<int> guests,
    final bool updatingItinerary,
  }) = _$SearchFormModelImpl;
  const _SearchFormModel._() : super._();

  @override
  LoadableValue<List<Continent>> get continents;
  @override
  LoadableValue<String?> get selectedContinent;
  @override
  LoadableValue<DateTimeRange?> get dateRange;
  @override
  LoadableValue<int> get guests;
  @override
  bool get updatingItinerary;

  /// Create a copy of SearchFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchFormModelImplCopyWith<_$SearchFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchFormMessages {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange? dateRange) setDateRange,
    required TResult Function(String? continent) setSelectedContinent,
    required TResult Function(int quantity) setGuests,
    required TResult Function(rs.Result<ItineraryConfig> config)
    loadItineraryConfig,
    required TResult Function(rs.Result<List<Continent>> continents)
    loadContinents,
    required TResult Function() load,
    required TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )
    updateItinerary,
    required TResult Function(void Function() handler) successUpdateItinerary,
    required TResult Function(Exception error, void Function(Exception) handler)
    failureUpdateItinerary,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange? dateRange)? setDateRange,
    TResult? Function(String? continent)? setSelectedContinent,
    TResult? Function(int quantity)? setGuests,
    TResult? Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult? Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult? Function()? load,
    TResult? Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult? Function(void Function() handler)? successUpdateItinerary,
    TResult? Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange? dateRange)? setDateRange,
    TResult Function(String? continent)? setSelectedContinent,
    TResult Function(int quantity)? setGuests,
    TResult Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult Function()? load,
    TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult Function(void Function() handler)? successUpdateItinerary,
    TResult Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDateRange value) setDateRange,
    required TResult Function(_SetSelectedContinent value) setSelectedContinent,
    required TResult Function(_SetGuests value) setGuests,
    required TResult Function(_LoadItineraryConfig value) loadItineraryConfig,
    required TResult Function(_LoadContinents value) loadContinents,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateItinerary value) updateItinerary,
    required TResult Function(_SuccessUpdateItinerary value)
    successUpdateItinerary,
    required TResult Function(_FailureUpdateItinerary value)
    failureUpdateItinerary,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDateRange value)? setDateRange,
    TResult? Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult? Function(_SetGuests value)? setGuests,
    TResult? Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult? Function(_LoadContinents value)? loadContinents,
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateItinerary value)? updateItinerary,
    TResult? Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult? Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDateRange value)? setDateRange,
    TResult Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult Function(_SetGuests value)? setGuests,
    TResult Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult Function(_LoadContinents value)? loadContinents,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateItinerary value)? updateItinerary,
    TResult Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFormMessagesCopyWith<$Res> {
  factory $SearchFormMessagesCopyWith(
    SearchFormMessages value,
    $Res Function(SearchFormMessages) then,
  ) = _$SearchFormMessagesCopyWithImpl<$Res, SearchFormMessages>;
}

/// @nodoc
class _$SearchFormMessagesCopyWithImpl<$Res, $Val extends SearchFormMessages>
    implements $SearchFormMessagesCopyWith<$Res> {
  _$SearchFormMessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetDateRangeImplCopyWith<$Res> {
  factory _$$SetDateRangeImplCopyWith(
    _$SetDateRangeImpl value,
    $Res Function(_$SetDateRangeImpl) then,
  ) = __$$SetDateRangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTimeRange? dateRange});
}

/// @nodoc
class __$$SetDateRangeImplCopyWithImpl<$Res>
    extends _$SearchFormMessagesCopyWithImpl<$Res, _$SetDateRangeImpl>
    implements _$$SetDateRangeImplCopyWith<$Res> {
  __$$SetDateRangeImplCopyWithImpl(
    _$SetDateRangeImpl _value,
    $Res Function(_$SetDateRangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dateRange = freezed}) {
    return _then(
      _$SetDateRangeImpl(
        freezed == dateRange
            ? _value.dateRange
            : dateRange // ignore: cast_nullable_to_non_nullable
                as DateTimeRange?,
      ),
    );
  }
}

/// @nodoc

class _$SetDateRangeImpl implements _SetDateRange {
  const _$SetDateRangeImpl(this.dateRange);

  @override
  final DateTimeRange? dateRange;

  @override
  String toString() {
    return 'SearchFormMessages.setDateRange(dateRange: $dateRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDateRangeImpl &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateRange);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDateRangeImplCopyWith<_$SetDateRangeImpl> get copyWith =>
      __$$SetDateRangeImplCopyWithImpl<_$SetDateRangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange? dateRange) setDateRange,
    required TResult Function(String? continent) setSelectedContinent,
    required TResult Function(int quantity) setGuests,
    required TResult Function(rs.Result<ItineraryConfig> config)
    loadItineraryConfig,
    required TResult Function(rs.Result<List<Continent>> continents)
    loadContinents,
    required TResult Function() load,
    required TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )
    updateItinerary,
    required TResult Function(void Function() handler) successUpdateItinerary,
    required TResult Function(Exception error, void Function(Exception) handler)
    failureUpdateItinerary,
  }) {
    return setDateRange(dateRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange? dateRange)? setDateRange,
    TResult? Function(String? continent)? setSelectedContinent,
    TResult? Function(int quantity)? setGuests,
    TResult? Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult? Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult? Function()? load,
    TResult? Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult? Function(void Function() handler)? successUpdateItinerary,
    TResult? Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
  }) {
    return setDateRange?.call(dateRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange? dateRange)? setDateRange,
    TResult Function(String? continent)? setSelectedContinent,
    TResult Function(int quantity)? setGuests,
    TResult Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult Function()? load,
    TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult Function(void Function() handler)? successUpdateItinerary,
    TResult Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (setDateRange != null) {
      return setDateRange(dateRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDateRange value) setDateRange,
    required TResult Function(_SetSelectedContinent value) setSelectedContinent,
    required TResult Function(_SetGuests value) setGuests,
    required TResult Function(_LoadItineraryConfig value) loadItineraryConfig,
    required TResult Function(_LoadContinents value) loadContinents,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateItinerary value) updateItinerary,
    required TResult Function(_SuccessUpdateItinerary value)
    successUpdateItinerary,
    required TResult Function(_FailureUpdateItinerary value)
    failureUpdateItinerary,
  }) {
    return setDateRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDateRange value)? setDateRange,
    TResult? Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult? Function(_SetGuests value)? setGuests,
    TResult? Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult? Function(_LoadContinents value)? loadContinents,
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateItinerary value)? updateItinerary,
    TResult? Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult? Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
  }) {
    return setDateRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDateRange value)? setDateRange,
    TResult Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult Function(_SetGuests value)? setGuests,
    TResult Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult Function(_LoadContinents value)? loadContinents,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateItinerary value)? updateItinerary,
    TResult Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (setDateRange != null) {
      return setDateRange(this);
    }
    return orElse();
  }
}

abstract class _SetDateRange implements SearchFormMessages {
  const factory _SetDateRange(final DateTimeRange? dateRange) =
      _$SetDateRangeImpl;

  DateTimeRange? get dateRange;

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDateRangeImplCopyWith<_$SetDateRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSelectedContinentImplCopyWith<$Res> {
  factory _$$SetSelectedContinentImplCopyWith(
    _$SetSelectedContinentImpl value,
    $Res Function(_$SetSelectedContinentImpl) then,
  ) = __$$SetSelectedContinentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? continent});
}

/// @nodoc
class __$$SetSelectedContinentImplCopyWithImpl<$Res>
    extends _$SearchFormMessagesCopyWithImpl<$Res, _$SetSelectedContinentImpl>
    implements _$$SetSelectedContinentImplCopyWith<$Res> {
  __$$SetSelectedContinentImplCopyWithImpl(
    _$SetSelectedContinentImpl _value,
    $Res Function(_$SetSelectedContinentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? continent = freezed}) {
    return _then(
      _$SetSelectedContinentImpl(
        freezed == continent
            ? _value.continent
            : continent // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc

class _$SetSelectedContinentImpl implements _SetSelectedContinent {
  const _$SetSelectedContinentImpl(this.continent);

  @override
  final String? continent;

  @override
  String toString() {
    return 'SearchFormMessages.setSelectedContinent(continent: $continent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedContinentImpl &&
            (identical(other.continent, continent) ||
                other.continent == continent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, continent);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedContinentImplCopyWith<_$SetSelectedContinentImpl>
  get copyWith =>
      __$$SetSelectedContinentImplCopyWithImpl<_$SetSelectedContinentImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange? dateRange) setDateRange,
    required TResult Function(String? continent) setSelectedContinent,
    required TResult Function(int quantity) setGuests,
    required TResult Function(rs.Result<ItineraryConfig> config)
    loadItineraryConfig,
    required TResult Function(rs.Result<List<Continent>> continents)
    loadContinents,
    required TResult Function() load,
    required TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )
    updateItinerary,
    required TResult Function(void Function() handler) successUpdateItinerary,
    required TResult Function(Exception error, void Function(Exception) handler)
    failureUpdateItinerary,
  }) {
    return setSelectedContinent(continent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange? dateRange)? setDateRange,
    TResult? Function(String? continent)? setSelectedContinent,
    TResult? Function(int quantity)? setGuests,
    TResult? Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult? Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult? Function()? load,
    TResult? Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult? Function(void Function() handler)? successUpdateItinerary,
    TResult? Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
  }) {
    return setSelectedContinent?.call(continent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange? dateRange)? setDateRange,
    TResult Function(String? continent)? setSelectedContinent,
    TResult Function(int quantity)? setGuests,
    TResult Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult Function()? load,
    TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult Function(void Function() handler)? successUpdateItinerary,
    TResult Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (setSelectedContinent != null) {
      return setSelectedContinent(continent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDateRange value) setDateRange,
    required TResult Function(_SetSelectedContinent value) setSelectedContinent,
    required TResult Function(_SetGuests value) setGuests,
    required TResult Function(_LoadItineraryConfig value) loadItineraryConfig,
    required TResult Function(_LoadContinents value) loadContinents,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateItinerary value) updateItinerary,
    required TResult Function(_SuccessUpdateItinerary value)
    successUpdateItinerary,
    required TResult Function(_FailureUpdateItinerary value)
    failureUpdateItinerary,
  }) {
    return setSelectedContinent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDateRange value)? setDateRange,
    TResult? Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult? Function(_SetGuests value)? setGuests,
    TResult? Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult? Function(_LoadContinents value)? loadContinents,
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateItinerary value)? updateItinerary,
    TResult? Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult? Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
  }) {
    return setSelectedContinent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDateRange value)? setDateRange,
    TResult Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult Function(_SetGuests value)? setGuests,
    TResult Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult Function(_LoadContinents value)? loadContinents,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateItinerary value)? updateItinerary,
    TResult Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (setSelectedContinent != null) {
      return setSelectedContinent(this);
    }
    return orElse();
  }
}

abstract class _SetSelectedContinent implements SearchFormMessages {
  const factory _SetSelectedContinent(final String? continent) =
      _$SetSelectedContinentImpl;

  String? get continent;

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetSelectedContinentImplCopyWith<_$SetSelectedContinentImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetGuestsImplCopyWith<$Res> {
  factory _$$SetGuestsImplCopyWith(
    _$SetGuestsImpl value,
    $Res Function(_$SetGuestsImpl) then,
  ) = __$$SetGuestsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$SetGuestsImplCopyWithImpl<$Res>
    extends _$SearchFormMessagesCopyWithImpl<$Res, _$SetGuestsImpl>
    implements _$$SetGuestsImplCopyWith<$Res> {
  __$$SetGuestsImplCopyWithImpl(
    _$SetGuestsImpl _value,
    $Res Function(_$SetGuestsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? quantity = null}) {
    return _then(
      _$SetGuestsImpl(
        null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$SetGuestsImpl implements _SetGuests {
  const _$SetGuestsImpl(this.quantity);

  @override
  final int quantity;

  @override
  String toString() {
    return 'SearchFormMessages.setGuests(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetGuestsImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetGuestsImplCopyWith<_$SetGuestsImpl> get copyWith =>
      __$$SetGuestsImplCopyWithImpl<_$SetGuestsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange? dateRange) setDateRange,
    required TResult Function(String? continent) setSelectedContinent,
    required TResult Function(int quantity) setGuests,
    required TResult Function(rs.Result<ItineraryConfig> config)
    loadItineraryConfig,
    required TResult Function(rs.Result<List<Continent>> continents)
    loadContinents,
    required TResult Function() load,
    required TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )
    updateItinerary,
    required TResult Function(void Function() handler) successUpdateItinerary,
    required TResult Function(Exception error, void Function(Exception) handler)
    failureUpdateItinerary,
  }) {
    return setGuests(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange? dateRange)? setDateRange,
    TResult? Function(String? continent)? setSelectedContinent,
    TResult? Function(int quantity)? setGuests,
    TResult? Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult? Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult? Function()? load,
    TResult? Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult? Function(void Function() handler)? successUpdateItinerary,
    TResult? Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
  }) {
    return setGuests?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange? dateRange)? setDateRange,
    TResult Function(String? continent)? setSelectedContinent,
    TResult Function(int quantity)? setGuests,
    TResult Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult Function()? load,
    TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult Function(void Function() handler)? successUpdateItinerary,
    TResult Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (setGuests != null) {
      return setGuests(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDateRange value) setDateRange,
    required TResult Function(_SetSelectedContinent value) setSelectedContinent,
    required TResult Function(_SetGuests value) setGuests,
    required TResult Function(_LoadItineraryConfig value) loadItineraryConfig,
    required TResult Function(_LoadContinents value) loadContinents,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateItinerary value) updateItinerary,
    required TResult Function(_SuccessUpdateItinerary value)
    successUpdateItinerary,
    required TResult Function(_FailureUpdateItinerary value)
    failureUpdateItinerary,
  }) {
    return setGuests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDateRange value)? setDateRange,
    TResult? Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult? Function(_SetGuests value)? setGuests,
    TResult? Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult? Function(_LoadContinents value)? loadContinents,
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateItinerary value)? updateItinerary,
    TResult? Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult? Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
  }) {
    return setGuests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDateRange value)? setDateRange,
    TResult Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult Function(_SetGuests value)? setGuests,
    TResult Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult Function(_LoadContinents value)? loadContinents,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateItinerary value)? updateItinerary,
    TResult Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (setGuests != null) {
      return setGuests(this);
    }
    return orElse();
  }
}

abstract class _SetGuests implements SearchFormMessages {
  const factory _SetGuests(final int quantity) = _$SetGuestsImpl;

  int get quantity;

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetGuestsImplCopyWith<_$SetGuestsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadItineraryConfigImplCopyWith<$Res> {
  factory _$$LoadItineraryConfigImplCopyWith(
    _$LoadItineraryConfigImpl value,
    $Res Function(_$LoadItineraryConfigImpl) then,
  ) = __$$LoadItineraryConfigImplCopyWithImpl<$Res>;
  @useResult
  $Res call({rs.Result<ItineraryConfig> config});
}

/// @nodoc
class __$$LoadItineraryConfigImplCopyWithImpl<$Res>
    extends _$SearchFormMessagesCopyWithImpl<$Res, _$LoadItineraryConfigImpl>
    implements _$$LoadItineraryConfigImplCopyWith<$Res> {
  __$$LoadItineraryConfigImplCopyWithImpl(
    _$LoadItineraryConfigImpl _value,
    $Res Function(_$LoadItineraryConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? config = null}) {
    return _then(
      _$LoadItineraryConfigImpl(
        null == config
            ? _value.config
            : config // ignore: cast_nullable_to_non_nullable
                as rs.Result<ItineraryConfig>,
      ),
    );
  }
}

/// @nodoc

class _$LoadItineraryConfigImpl implements _LoadItineraryConfig {
  const _$LoadItineraryConfigImpl(this.config);

  @override
  final rs.Result<ItineraryConfig> config;

  @override
  String toString() {
    return 'SearchFormMessages.loadItineraryConfig(config: $config)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadItineraryConfigImpl &&
            (identical(other.config, config) || other.config == config));
  }

  @override
  int get hashCode => Object.hash(runtimeType, config);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadItineraryConfigImplCopyWith<_$LoadItineraryConfigImpl> get copyWith =>
      __$$LoadItineraryConfigImplCopyWithImpl<_$LoadItineraryConfigImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange? dateRange) setDateRange,
    required TResult Function(String? continent) setSelectedContinent,
    required TResult Function(int quantity) setGuests,
    required TResult Function(rs.Result<ItineraryConfig> config)
    loadItineraryConfig,
    required TResult Function(rs.Result<List<Continent>> continents)
    loadContinents,
    required TResult Function() load,
    required TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )
    updateItinerary,
    required TResult Function(void Function() handler) successUpdateItinerary,
    required TResult Function(Exception error, void Function(Exception) handler)
    failureUpdateItinerary,
  }) {
    return loadItineraryConfig(config);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange? dateRange)? setDateRange,
    TResult? Function(String? continent)? setSelectedContinent,
    TResult? Function(int quantity)? setGuests,
    TResult? Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult? Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult? Function()? load,
    TResult? Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult? Function(void Function() handler)? successUpdateItinerary,
    TResult? Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
  }) {
    return loadItineraryConfig?.call(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange? dateRange)? setDateRange,
    TResult Function(String? continent)? setSelectedContinent,
    TResult Function(int quantity)? setGuests,
    TResult Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult Function()? load,
    TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult Function(void Function() handler)? successUpdateItinerary,
    TResult Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (loadItineraryConfig != null) {
      return loadItineraryConfig(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDateRange value) setDateRange,
    required TResult Function(_SetSelectedContinent value) setSelectedContinent,
    required TResult Function(_SetGuests value) setGuests,
    required TResult Function(_LoadItineraryConfig value) loadItineraryConfig,
    required TResult Function(_LoadContinents value) loadContinents,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateItinerary value) updateItinerary,
    required TResult Function(_SuccessUpdateItinerary value)
    successUpdateItinerary,
    required TResult Function(_FailureUpdateItinerary value)
    failureUpdateItinerary,
  }) {
    return loadItineraryConfig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDateRange value)? setDateRange,
    TResult? Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult? Function(_SetGuests value)? setGuests,
    TResult? Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult? Function(_LoadContinents value)? loadContinents,
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateItinerary value)? updateItinerary,
    TResult? Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult? Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
  }) {
    return loadItineraryConfig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDateRange value)? setDateRange,
    TResult Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult Function(_SetGuests value)? setGuests,
    TResult Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult Function(_LoadContinents value)? loadContinents,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateItinerary value)? updateItinerary,
    TResult Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (loadItineraryConfig != null) {
      return loadItineraryConfig(this);
    }
    return orElse();
  }
}

abstract class _LoadItineraryConfig implements SearchFormMessages {
  const factory _LoadItineraryConfig(final rs.Result<ItineraryConfig> config) =
      _$LoadItineraryConfigImpl;

  rs.Result<ItineraryConfig> get config;

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadItineraryConfigImplCopyWith<_$LoadItineraryConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadContinentsImplCopyWith<$Res> {
  factory _$$LoadContinentsImplCopyWith(
    _$LoadContinentsImpl value,
    $Res Function(_$LoadContinentsImpl) then,
  ) = __$$LoadContinentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({rs.Result<List<Continent>> continents});
}

/// @nodoc
class __$$LoadContinentsImplCopyWithImpl<$Res>
    extends _$SearchFormMessagesCopyWithImpl<$Res, _$LoadContinentsImpl>
    implements _$$LoadContinentsImplCopyWith<$Res> {
  __$$LoadContinentsImplCopyWithImpl(
    _$LoadContinentsImpl _value,
    $Res Function(_$LoadContinentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? continents = null}) {
    return _then(
      _$LoadContinentsImpl(
        null == continents
            ? _value.continents
            : continents // ignore: cast_nullable_to_non_nullable
                as rs.Result<List<Continent>>,
      ),
    );
  }
}

/// @nodoc

class _$LoadContinentsImpl implements _LoadContinents {
  const _$LoadContinentsImpl(this.continents);

  @override
  final rs.Result<List<Continent>> continents;

  @override
  String toString() {
    return 'SearchFormMessages.loadContinents(continents: $continents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadContinentsImpl &&
            (identical(other.continents, continents) ||
                other.continents == continents));
  }

  @override
  int get hashCode => Object.hash(runtimeType, continents);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadContinentsImplCopyWith<_$LoadContinentsImpl> get copyWith =>
      __$$LoadContinentsImplCopyWithImpl<_$LoadContinentsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange? dateRange) setDateRange,
    required TResult Function(String? continent) setSelectedContinent,
    required TResult Function(int quantity) setGuests,
    required TResult Function(rs.Result<ItineraryConfig> config)
    loadItineraryConfig,
    required TResult Function(rs.Result<List<Continent>> continents)
    loadContinents,
    required TResult Function() load,
    required TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )
    updateItinerary,
    required TResult Function(void Function() handler) successUpdateItinerary,
    required TResult Function(Exception error, void Function(Exception) handler)
    failureUpdateItinerary,
  }) {
    return loadContinents(continents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange? dateRange)? setDateRange,
    TResult? Function(String? continent)? setSelectedContinent,
    TResult? Function(int quantity)? setGuests,
    TResult? Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult? Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult? Function()? load,
    TResult? Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult? Function(void Function() handler)? successUpdateItinerary,
    TResult? Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
  }) {
    return loadContinents?.call(continents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange? dateRange)? setDateRange,
    TResult Function(String? continent)? setSelectedContinent,
    TResult Function(int quantity)? setGuests,
    TResult Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult Function()? load,
    TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult Function(void Function() handler)? successUpdateItinerary,
    TResult Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (loadContinents != null) {
      return loadContinents(continents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDateRange value) setDateRange,
    required TResult Function(_SetSelectedContinent value) setSelectedContinent,
    required TResult Function(_SetGuests value) setGuests,
    required TResult Function(_LoadItineraryConfig value) loadItineraryConfig,
    required TResult Function(_LoadContinents value) loadContinents,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateItinerary value) updateItinerary,
    required TResult Function(_SuccessUpdateItinerary value)
    successUpdateItinerary,
    required TResult Function(_FailureUpdateItinerary value)
    failureUpdateItinerary,
  }) {
    return loadContinents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDateRange value)? setDateRange,
    TResult? Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult? Function(_SetGuests value)? setGuests,
    TResult? Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult? Function(_LoadContinents value)? loadContinents,
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateItinerary value)? updateItinerary,
    TResult? Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult? Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
  }) {
    return loadContinents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDateRange value)? setDateRange,
    TResult Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult Function(_SetGuests value)? setGuests,
    TResult Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult Function(_LoadContinents value)? loadContinents,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateItinerary value)? updateItinerary,
    TResult Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (loadContinents != null) {
      return loadContinents(this);
    }
    return orElse();
  }
}

abstract class _LoadContinents implements SearchFormMessages {
  const factory _LoadContinents(final rs.Result<List<Continent>> continents) =
      _$LoadContinentsImpl;

  rs.Result<List<Continent>> get continents;

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadContinentsImplCopyWith<_$LoadContinentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
    _$LoadImpl value,
    $Res Function(_$LoadImpl) then,
  ) = __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$SearchFormMessagesCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
    : super(_value, _then);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'SearchFormMessages.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange? dateRange) setDateRange,
    required TResult Function(String? continent) setSelectedContinent,
    required TResult Function(int quantity) setGuests,
    required TResult Function(rs.Result<ItineraryConfig> config)
    loadItineraryConfig,
    required TResult Function(rs.Result<List<Continent>> continents)
    loadContinents,
    required TResult Function() load,
    required TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )
    updateItinerary,
    required TResult Function(void Function() handler) successUpdateItinerary,
    required TResult Function(Exception error, void Function(Exception) handler)
    failureUpdateItinerary,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange? dateRange)? setDateRange,
    TResult? Function(String? continent)? setSelectedContinent,
    TResult? Function(int quantity)? setGuests,
    TResult? Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult? Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult? Function()? load,
    TResult? Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult? Function(void Function() handler)? successUpdateItinerary,
    TResult? Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange? dateRange)? setDateRange,
    TResult Function(String? continent)? setSelectedContinent,
    TResult Function(int quantity)? setGuests,
    TResult Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult Function()? load,
    TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult Function(void Function() handler)? successUpdateItinerary,
    TResult Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDateRange value) setDateRange,
    required TResult Function(_SetSelectedContinent value) setSelectedContinent,
    required TResult Function(_SetGuests value) setGuests,
    required TResult Function(_LoadItineraryConfig value) loadItineraryConfig,
    required TResult Function(_LoadContinents value) loadContinents,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateItinerary value) updateItinerary,
    required TResult Function(_SuccessUpdateItinerary value)
    successUpdateItinerary,
    required TResult Function(_FailureUpdateItinerary value)
    failureUpdateItinerary,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDateRange value)? setDateRange,
    TResult? Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult? Function(_SetGuests value)? setGuests,
    TResult? Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult? Function(_LoadContinents value)? loadContinents,
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateItinerary value)? updateItinerary,
    TResult? Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult? Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDateRange value)? setDateRange,
    TResult Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult Function(_SetGuests value)? setGuests,
    TResult Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult Function(_LoadContinents value)? loadContinents,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateItinerary value)? updateItinerary,
    TResult Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements SearchFormMessages {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$UpdateItineraryImplCopyWith<$Res> {
  factory _$$UpdateItineraryImplCopyWith(
    _$UpdateItineraryImpl value,
    $Res Function(_$UpdateItineraryImpl) then,
  ) = __$$UpdateItineraryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({void Function() onSuccess, void Function(Exception) onFailure});
}

/// @nodoc
class __$$UpdateItineraryImplCopyWithImpl<$Res>
    extends _$SearchFormMessagesCopyWithImpl<$Res, _$UpdateItineraryImpl>
    implements _$$UpdateItineraryImplCopyWith<$Res> {
  __$$UpdateItineraryImplCopyWithImpl(
    _$UpdateItineraryImpl _value,
    $Res Function(_$UpdateItineraryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? onSuccess = null, Object? onFailure = null}) {
    return _then(
      _$UpdateItineraryImpl(
        onSuccess:
            null == onSuccess
                ? _value.onSuccess
                : onSuccess // ignore: cast_nullable_to_non_nullable
                    as void Function(),
        onFailure:
            null == onFailure
                ? _value.onFailure
                : onFailure // ignore: cast_nullable_to_non_nullable
                    as void Function(Exception),
      ),
    );
  }
}

/// @nodoc

class _$UpdateItineraryImpl implements _UpdateItinerary {
  const _$UpdateItineraryImpl({
    required this.onSuccess,
    required this.onFailure,
  });

  @override
  final void Function() onSuccess;
  @override
  final void Function(Exception) onFailure;

  @override
  String toString() {
    return 'SearchFormMessages.updateItinerary(onSuccess: $onSuccess, onFailure: $onFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateItineraryImpl &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onFailure, onFailure) ||
                other.onFailure == onFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSuccess, onFailure);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateItineraryImplCopyWith<_$UpdateItineraryImpl> get copyWith =>
      __$$UpdateItineraryImplCopyWithImpl<_$UpdateItineraryImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange? dateRange) setDateRange,
    required TResult Function(String? continent) setSelectedContinent,
    required TResult Function(int quantity) setGuests,
    required TResult Function(rs.Result<ItineraryConfig> config)
    loadItineraryConfig,
    required TResult Function(rs.Result<List<Continent>> continents)
    loadContinents,
    required TResult Function() load,
    required TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )
    updateItinerary,
    required TResult Function(void Function() handler) successUpdateItinerary,
    required TResult Function(Exception error, void Function(Exception) handler)
    failureUpdateItinerary,
  }) {
    return updateItinerary(onSuccess, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange? dateRange)? setDateRange,
    TResult? Function(String? continent)? setSelectedContinent,
    TResult? Function(int quantity)? setGuests,
    TResult? Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult? Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult? Function()? load,
    TResult? Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult? Function(void Function() handler)? successUpdateItinerary,
    TResult? Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
  }) {
    return updateItinerary?.call(onSuccess, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange? dateRange)? setDateRange,
    TResult Function(String? continent)? setSelectedContinent,
    TResult Function(int quantity)? setGuests,
    TResult Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult Function()? load,
    TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult Function(void Function() handler)? successUpdateItinerary,
    TResult Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (updateItinerary != null) {
      return updateItinerary(onSuccess, onFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDateRange value) setDateRange,
    required TResult Function(_SetSelectedContinent value) setSelectedContinent,
    required TResult Function(_SetGuests value) setGuests,
    required TResult Function(_LoadItineraryConfig value) loadItineraryConfig,
    required TResult Function(_LoadContinents value) loadContinents,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateItinerary value) updateItinerary,
    required TResult Function(_SuccessUpdateItinerary value)
    successUpdateItinerary,
    required TResult Function(_FailureUpdateItinerary value)
    failureUpdateItinerary,
  }) {
    return updateItinerary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDateRange value)? setDateRange,
    TResult? Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult? Function(_SetGuests value)? setGuests,
    TResult? Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult? Function(_LoadContinents value)? loadContinents,
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateItinerary value)? updateItinerary,
    TResult? Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult? Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
  }) {
    return updateItinerary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDateRange value)? setDateRange,
    TResult Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult Function(_SetGuests value)? setGuests,
    TResult Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult Function(_LoadContinents value)? loadContinents,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateItinerary value)? updateItinerary,
    TResult Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (updateItinerary != null) {
      return updateItinerary(this);
    }
    return orElse();
  }
}

abstract class _UpdateItinerary implements SearchFormMessages {
  const factory _UpdateItinerary({
    required final void Function() onSuccess,
    required final void Function(Exception) onFailure,
  }) = _$UpdateItineraryImpl;

  void Function() get onSuccess;
  void Function(Exception) get onFailure;

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateItineraryImplCopyWith<_$UpdateItineraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessUpdateItineraryImplCopyWith<$Res> {
  factory _$$SuccessUpdateItineraryImplCopyWith(
    _$SuccessUpdateItineraryImpl value,
    $Res Function(_$SuccessUpdateItineraryImpl) then,
  ) = __$$SuccessUpdateItineraryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({void Function() handler});
}

/// @nodoc
class __$$SuccessUpdateItineraryImplCopyWithImpl<$Res>
    extends _$SearchFormMessagesCopyWithImpl<$Res, _$SuccessUpdateItineraryImpl>
    implements _$$SuccessUpdateItineraryImplCopyWith<$Res> {
  __$$SuccessUpdateItineraryImplCopyWithImpl(
    _$SuccessUpdateItineraryImpl _value,
    $Res Function(_$SuccessUpdateItineraryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? handler = null}) {
    return _then(
      _$SuccessUpdateItineraryImpl(
        null == handler
            ? _value.handler
            : handler // ignore: cast_nullable_to_non_nullable
                as void Function(),
      ),
    );
  }
}

/// @nodoc

class _$SuccessUpdateItineraryImpl implements _SuccessUpdateItinerary {
  const _$SuccessUpdateItineraryImpl(this.handler);

  @override
  final void Function() handler;

  @override
  String toString() {
    return 'SearchFormMessages.successUpdateItinerary(handler: $handler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUpdateItineraryImpl &&
            (identical(other.handler, handler) || other.handler == handler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, handler);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUpdateItineraryImplCopyWith<_$SuccessUpdateItineraryImpl>
  get copyWith =>
      __$$SuccessUpdateItineraryImplCopyWithImpl<_$SuccessUpdateItineraryImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange? dateRange) setDateRange,
    required TResult Function(String? continent) setSelectedContinent,
    required TResult Function(int quantity) setGuests,
    required TResult Function(rs.Result<ItineraryConfig> config)
    loadItineraryConfig,
    required TResult Function(rs.Result<List<Continent>> continents)
    loadContinents,
    required TResult Function() load,
    required TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )
    updateItinerary,
    required TResult Function(void Function() handler) successUpdateItinerary,
    required TResult Function(Exception error, void Function(Exception) handler)
    failureUpdateItinerary,
  }) {
    return successUpdateItinerary(handler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange? dateRange)? setDateRange,
    TResult? Function(String? continent)? setSelectedContinent,
    TResult? Function(int quantity)? setGuests,
    TResult? Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult? Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult? Function()? load,
    TResult? Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult? Function(void Function() handler)? successUpdateItinerary,
    TResult? Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
  }) {
    return successUpdateItinerary?.call(handler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange? dateRange)? setDateRange,
    TResult Function(String? continent)? setSelectedContinent,
    TResult Function(int quantity)? setGuests,
    TResult Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult Function()? load,
    TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult Function(void Function() handler)? successUpdateItinerary,
    TResult Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (successUpdateItinerary != null) {
      return successUpdateItinerary(handler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDateRange value) setDateRange,
    required TResult Function(_SetSelectedContinent value) setSelectedContinent,
    required TResult Function(_SetGuests value) setGuests,
    required TResult Function(_LoadItineraryConfig value) loadItineraryConfig,
    required TResult Function(_LoadContinents value) loadContinents,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateItinerary value) updateItinerary,
    required TResult Function(_SuccessUpdateItinerary value)
    successUpdateItinerary,
    required TResult Function(_FailureUpdateItinerary value)
    failureUpdateItinerary,
  }) {
    return successUpdateItinerary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDateRange value)? setDateRange,
    TResult? Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult? Function(_SetGuests value)? setGuests,
    TResult? Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult? Function(_LoadContinents value)? loadContinents,
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateItinerary value)? updateItinerary,
    TResult? Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult? Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
  }) {
    return successUpdateItinerary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDateRange value)? setDateRange,
    TResult Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult Function(_SetGuests value)? setGuests,
    TResult Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult Function(_LoadContinents value)? loadContinents,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateItinerary value)? updateItinerary,
    TResult Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (successUpdateItinerary != null) {
      return successUpdateItinerary(this);
    }
    return orElse();
  }
}

abstract class _SuccessUpdateItinerary implements SearchFormMessages {
  const factory _SuccessUpdateItinerary(final void Function() handler) =
      _$SuccessUpdateItineraryImpl;

  void Function() get handler;

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessUpdateItineraryImplCopyWith<_$SuccessUpdateItineraryImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureUpdateItineraryImplCopyWith<$Res> {
  factory _$$FailureUpdateItineraryImplCopyWith(
    _$FailureUpdateItineraryImpl value,
    $Res Function(_$FailureUpdateItineraryImpl) then,
  ) = __$$FailureUpdateItineraryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error, void Function(Exception) handler});
}

/// @nodoc
class __$$FailureUpdateItineraryImplCopyWithImpl<$Res>
    extends _$SearchFormMessagesCopyWithImpl<$Res, _$FailureUpdateItineraryImpl>
    implements _$$FailureUpdateItineraryImplCopyWith<$Res> {
  __$$FailureUpdateItineraryImplCopyWithImpl(
    _$FailureUpdateItineraryImpl _value,
    $Res Function(_$FailureUpdateItineraryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null, Object? handler = null}) {
    return _then(
      _$FailureUpdateItineraryImpl(
        null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                as Exception,
        null == handler
            ? _value.handler
            : handler // ignore: cast_nullable_to_non_nullable
                as void Function(Exception),
      ),
    );
  }
}

/// @nodoc

class _$FailureUpdateItineraryImpl implements _FailureUpdateItinerary {
  const _$FailureUpdateItineraryImpl(this.error, this.handler);

  @override
  final Exception error;
  @override
  final void Function(Exception) handler;

  @override
  String toString() {
    return 'SearchFormMessages.failureUpdateItinerary(error: $error, handler: $handler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureUpdateItineraryImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.handler, handler) || other.handler == handler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, handler);

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureUpdateItineraryImplCopyWith<_$FailureUpdateItineraryImpl>
  get copyWith =>
      __$$FailureUpdateItineraryImplCopyWithImpl<_$FailureUpdateItineraryImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange? dateRange) setDateRange,
    required TResult Function(String? continent) setSelectedContinent,
    required TResult Function(int quantity) setGuests,
    required TResult Function(rs.Result<ItineraryConfig> config)
    loadItineraryConfig,
    required TResult Function(rs.Result<List<Continent>> continents)
    loadContinents,
    required TResult Function() load,
    required TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )
    updateItinerary,
    required TResult Function(void Function() handler) successUpdateItinerary,
    required TResult Function(Exception error, void Function(Exception) handler)
    failureUpdateItinerary,
  }) {
    return failureUpdateItinerary(error, handler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange? dateRange)? setDateRange,
    TResult? Function(String? continent)? setSelectedContinent,
    TResult? Function(int quantity)? setGuests,
    TResult? Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult? Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult? Function()? load,
    TResult? Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult? Function(void Function() handler)? successUpdateItinerary,
    TResult? Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
  }) {
    return failureUpdateItinerary?.call(error, handler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange? dateRange)? setDateRange,
    TResult Function(String? continent)? setSelectedContinent,
    TResult Function(int quantity)? setGuests,
    TResult Function(rs.Result<ItineraryConfig> config)? loadItineraryConfig,
    TResult Function(rs.Result<List<Continent>> continents)? loadContinents,
    TResult Function()? load,
    TResult Function(
      void Function() onSuccess,
      void Function(Exception) onFailure,
    )?
    updateItinerary,
    TResult Function(void Function() handler)? successUpdateItinerary,
    TResult Function(Exception error, void Function(Exception) handler)?
    failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (failureUpdateItinerary != null) {
      return failureUpdateItinerary(error, handler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDateRange value) setDateRange,
    required TResult Function(_SetSelectedContinent value) setSelectedContinent,
    required TResult Function(_SetGuests value) setGuests,
    required TResult Function(_LoadItineraryConfig value) loadItineraryConfig,
    required TResult Function(_LoadContinents value) loadContinents,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateItinerary value) updateItinerary,
    required TResult Function(_SuccessUpdateItinerary value)
    successUpdateItinerary,
    required TResult Function(_FailureUpdateItinerary value)
    failureUpdateItinerary,
  }) {
    return failureUpdateItinerary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDateRange value)? setDateRange,
    TResult? Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult? Function(_SetGuests value)? setGuests,
    TResult? Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult? Function(_LoadContinents value)? loadContinents,
    TResult? Function(_Load value)? load,
    TResult? Function(_UpdateItinerary value)? updateItinerary,
    TResult? Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult? Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
  }) {
    return failureUpdateItinerary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDateRange value)? setDateRange,
    TResult Function(_SetSelectedContinent value)? setSelectedContinent,
    TResult Function(_SetGuests value)? setGuests,
    TResult Function(_LoadItineraryConfig value)? loadItineraryConfig,
    TResult Function(_LoadContinents value)? loadContinents,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateItinerary value)? updateItinerary,
    TResult Function(_SuccessUpdateItinerary value)? successUpdateItinerary,
    TResult Function(_FailureUpdateItinerary value)? failureUpdateItinerary,
    required TResult orElse(),
  }) {
    if (failureUpdateItinerary != null) {
      return failureUpdateItinerary(this);
    }
    return orElse();
  }
}

abstract class _FailureUpdateItinerary implements SearchFormMessages {
  const factory _FailureUpdateItinerary(
    final Exception error,
    final void Function(Exception) handler,
  ) = _$FailureUpdateItineraryImpl;

  Exception get error;
  void Function(Exception) get handler;

  /// Create a copy of SearchFormMessages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureUpdateItineraryImplCopyWith<_$FailureUpdateItineraryImpl>
  get copyWith => throw _privateConstructorUsedError;
}
