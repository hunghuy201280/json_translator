// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'translate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TranslateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> source) submitted,
    required TResult Function(String value) sourceLangChanged,
    required TResult Function(String value) targetLangChanged,
    required TResult Function() initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> source)? submitted,
    TResult Function(String value)? sourceLangChanged,
    TResult Function(String value)? targetLangChanged,
    TResult Function()? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> source)? submitted,
    TResult Function(String value)? sourceLangChanged,
    TResult Function(String value)? targetLangChanged,
    TResult Function()? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranslateSubmitted value) submitted,
    required TResult Function(TranslateSourceLangChanged value)
        sourceLangChanged,
    required TResult Function(TranslateTargetLangChanged value)
        targetLangChanged,
    required TResult Function(TranslateInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TranslateSubmitted value)? submitted,
    TResult Function(TranslateSourceLangChanged value)? sourceLangChanged,
    TResult Function(TranslateTargetLangChanged value)? targetLangChanged,
    TResult Function(TranslateInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranslateSubmitted value)? submitted,
    TResult Function(TranslateSourceLangChanged value)? sourceLangChanged,
    TResult Function(TranslateTargetLangChanged value)? targetLangChanged,
    TResult Function(TranslateInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateEventCopyWith<$Res> {
  factory $TranslateEventCopyWith(
          TranslateEvent value, $Res Function(TranslateEvent) then) =
      _$TranslateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TranslateEventCopyWithImpl<$Res>
    implements $TranslateEventCopyWith<$Res> {
  _$TranslateEventCopyWithImpl(this._value, this._then);

  final TranslateEvent _value;
  // ignore: unused_field
  final $Res Function(TranslateEvent) _then;
}

/// @nodoc
abstract class _$$TranslateSubmittedCopyWith<$Res> {
  factory _$$TranslateSubmittedCopyWith(_$TranslateSubmitted value,
          $Res Function(_$TranslateSubmitted) then) =
      __$$TranslateSubmittedCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> source});
}

/// @nodoc
class __$$TranslateSubmittedCopyWithImpl<$Res>
    extends _$TranslateEventCopyWithImpl<$Res>
    implements _$$TranslateSubmittedCopyWith<$Res> {
  __$$TranslateSubmittedCopyWithImpl(
      _$TranslateSubmitted _value, $Res Function(_$TranslateSubmitted) _then)
      : super(_value, (v) => _then(v as _$TranslateSubmitted));

  @override
  _$TranslateSubmitted get _value => super._value as _$TranslateSubmitted;

  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_$TranslateSubmitted(
      source == freezed
          ? _value._source
          : source // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$TranslateSubmitted implements TranslateSubmitted {
  const _$TranslateSubmitted(final Map<String, dynamic> source)
      : _source = source;

  final Map<String, dynamic> _source;
  @override
  Map<String, dynamic> get source {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_source);
  }

  @override
  String toString() {
    return 'TranslateEvent.submitted(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateSubmitted &&
            const DeepCollectionEquality().equals(other._source, _source));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_source));

  @JsonKey(ignore: true)
  @override
  _$$TranslateSubmittedCopyWith<_$TranslateSubmitted> get copyWith =>
      __$$TranslateSubmittedCopyWithImpl<_$TranslateSubmitted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> source) submitted,
    required TResult Function(String value) sourceLangChanged,
    required TResult Function(String value) targetLangChanged,
    required TResult Function() initialized,
  }) {
    return submitted(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> source)? submitted,
    TResult Function(String value)? sourceLangChanged,
    TResult Function(String value)? targetLangChanged,
    TResult Function()? initialized,
  }) {
    return submitted?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> source)? submitted,
    TResult Function(String value)? sourceLangChanged,
    TResult Function(String value)? targetLangChanged,
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranslateSubmitted value) submitted,
    required TResult Function(TranslateSourceLangChanged value)
        sourceLangChanged,
    required TResult Function(TranslateTargetLangChanged value)
        targetLangChanged,
    required TResult Function(TranslateInitialized value) initialized,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TranslateSubmitted value)? submitted,
    TResult Function(TranslateSourceLangChanged value)? sourceLangChanged,
    TResult Function(TranslateTargetLangChanged value)? targetLangChanged,
    TResult Function(TranslateInitialized value)? initialized,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranslateSubmitted value)? submitted,
    TResult Function(TranslateSourceLangChanged value)? sourceLangChanged,
    TResult Function(TranslateTargetLangChanged value)? targetLangChanged,
    TResult Function(TranslateInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class TranslateSubmitted implements TranslateEvent {
  const factory TranslateSubmitted(final Map<String, dynamic> source) =
      _$TranslateSubmitted;

  Map<String, dynamic> get source;
  @JsonKey(ignore: true)
  _$$TranslateSubmittedCopyWith<_$TranslateSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TranslateSourceLangChangedCopyWith<$Res> {
  factory _$$TranslateSourceLangChangedCopyWith(
          _$TranslateSourceLangChanged value,
          $Res Function(_$TranslateSourceLangChanged) then) =
      __$$TranslateSourceLangChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$TranslateSourceLangChangedCopyWithImpl<$Res>
    extends _$TranslateEventCopyWithImpl<$Res>
    implements _$$TranslateSourceLangChangedCopyWith<$Res> {
  __$$TranslateSourceLangChangedCopyWithImpl(
      _$TranslateSourceLangChanged _value,
      $Res Function(_$TranslateSourceLangChanged) _then)
      : super(_value, (v) => _then(v as _$TranslateSourceLangChanged));

  @override
  _$TranslateSourceLangChanged get _value =>
      super._value as _$TranslateSourceLangChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$TranslateSourceLangChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TranslateSourceLangChanged implements TranslateSourceLangChanged {
  const _$TranslateSourceLangChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TranslateEvent.sourceLangChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateSourceLangChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$TranslateSourceLangChangedCopyWith<_$TranslateSourceLangChanged>
      get copyWith => __$$TranslateSourceLangChangedCopyWithImpl<
          _$TranslateSourceLangChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> source) submitted,
    required TResult Function(String value) sourceLangChanged,
    required TResult Function(String value) targetLangChanged,
    required TResult Function() initialized,
  }) {
    return sourceLangChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> source)? submitted,
    TResult Function(String value)? sourceLangChanged,
    TResult Function(String value)? targetLangChanged,
    TResult Function()? initialized,
  }) {
    return sourceLangChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> source)? submitted,
    TResult Function(String value)? sourceLangChanged,
    TResult Function(String value)? targetLangChanged,
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (sourceLangChanged != null) {
      return sourceLangChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranslateSubmitted value) submitted,
    required TResult Function(TranslateSourceLangChanged value)
        sourceLangChanged,
    required TResult Function(TranslateTargetLangChanged value)
        targetLangChanged,
    required TResult Function(TranslateInitialized value) initialized,
  }) {
    return sourceLangChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TranslateSubmitted value)? submitted,
    TResult Function(TranslateSourceLangChanged value)? sourceLangChanged,
    TResult Function(TranslateTargetLangChanged value)? targetLangChanged,
    TResult Function(TranslateInitialized value)? initialized,
  }) {
    return sourceLangChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranslateSubmitted value)? submitted,
    TResult Function(TranslateSourceLangChanged value)? sourceLangChanged,
    TResult Function(TranslateTargetLangChanged value)? targetLangChanged,
    TResult Function(TranslateInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (sourceLangChanged != null) {
      return sourceLangChanged(this);
    }
    return orElse();
  }
}

abstract class TranslateSourceLangChanged implements TranslateEvent {
  const factory TranslateSourceLangChanged(final String value) =
      _$TranslateSourceLangChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$TranslateSourceLangChangedCopyWith<_$TranslateSourceLangChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TranslateTargetLangChangedCopyWith<$Res> {
  factory _$$TranslateTargetLangChangedCopyWith(
          _$TranslateTargetLangChanged value,
          $Res Function(_$TranslateTargetLangChanged) then) =
      __$$TranslateTargetLangChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$TranslateTargetLangChangedCopyWithImpl<$Res>
    extends _$TranslateEventCopyWithImpl<$Res>
    implements _$$TranslateTargetLangChangedCopyWith<$Res> {
  __$$TranslateTargetLangChangedCopyWithImpl(
      _$TranslateTargetLangChanged _value,
      $Res Function(_$TranslateTargetLangChanged) _then)
      : super(_value, (v) => _then(v as _$TranslateTargetLangChanged));

  @override
  _$TranslateTargetLangChanged get _value =>
      super._value as _$TranslateTargetLangChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$TranslateTargetLangChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TranslateTargetLangChanged implements TranslateTargetLangChanged {
  const _$TranslateTargetLangChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TranslateEvent.targetLangChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateTargetLangChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$TranslateTargetLangChangedCopyWith<_$TranslateTargetLangChanged>
      get copyWith => __$$TranslateTargetLangChangedCopyWithImpl<
          _$TranslateTargetLangChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> source) submitted,
    required TResult Function(String value) sourceLangChanged,
    required TResult Function(String value) targetLangChanged,
    required TResult Function() initialized,
  }) {
    return targetLangChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> source)? submitted,
    TResult Function(String value)? sourceLangChanged,
    TResult Function(String value)? targetLangChanged,
    TResult Function()? initialized,
  }) {
    return targetLangChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> source)? submitted,
    TResult Function(String value)? sourceLangChanged,
    TResult Function(String value)? targetLangChanged,
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (targetLangChanged != null) {
      return targetLangChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranslateSubmitted value) submitted,
    required TResult Function(TranslateSourceLangChanged value)
        sourceLangChanged,
    required TResult Function(TranslateTargetLangChanged value)
        targetLangChanged,
    required TResult Function(TranslateInitialized value) initialized,
  }) {
    return targetLangChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TranslateSubmitted value)? submitted,
    TResult Function(TranslateSourceLangChanged value)? sourceLangChanged,
    TResult Function(TranslateTargetLangChanged value)? targetLangChanged,
    TResult Function(TranslateInitialized value)? initialized,
  }) {
    return targetLangChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranslateSubmitted value)? submitted,
    TResult Function(TranslateSourceLangChanged value)? sourceLangChanged,
    TResult Function(TranslateTargetLangChanged value)? targetLangChanged,
    TResult Function(TranslateInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (targetLangChanged != null) {
      return targetLangChanged(this);
    }
    return orElse();
  }
}

abstract class TranslateTargetLangChanged implements TranslateEvent {
  const factory TranslateTargetLangChanged(final String value) =
      _$TranslateTargetLangChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$TranslateTargetLangChangedCopyWith<_$TranslateTargetLangChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TranslateInitializedCopyWith<$Res> {
  factory _$$TranslateInitializedCopyWith(_$TranslateInitialized value,
          $Res Function(_$TranslateInitialized) then) =
      __$$TranslateInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TranslateInitializedCopyWithImpl<$Res>
    extends _$TranslateEventCopyWithImpl<$Res>
    implements _$$TranslateInitializedCopyWith<$Res> {
  __$$TranslateInitializedCopyWithImpl(_$TranslateInitialized _value,
      $Res Function(_$TranslateInitialized) _then)
      : super(_value, (v) => _then(v as _$TranslateInitialized));

  @override
  _$TranslateInitialized get _value => super._value as _$TranslateInitialized;
}

/// @nodoc

class _$TranslateInitialized implements TranslateInitialized {
  const _$TranslateInitialized();

  @override
  String toString() {
    return 'TranslateEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TranslateInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> source) submitted,
    required TResult Function(String value) sourceLangChanged,
    required TResult Function(String value) targetLangChanged,
    required TResult Function() initialized,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, dynamic> source)? submitted,
    TResult Function(String value)? sourceLangChanged,
    TResult Function(String value)? targetLangChanged,
    TResult Function()? initialized,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> source)? submitted,
    TResult Function(String value)? sourceLangChanged,
    TResult Function(String value)? targetLangChanged,
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranslateSubmitted value) submitted,
    required TResult Function(TranslateSourceLangChanged value)
        sourceLangChanged,
    required TResult Function(TranslateTargetLangChanged value)
        targetLangChanged,
    required TResult Function(TranslateInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TranslateSubmitted value)? submitted,
    TResult Function(TranslateSourceLangChanged value)? sourceLangChanged,
    TResult Function(TranslateTargetLangChanged value)? targetLangChanged,
    TResult Function(TranslateInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranslateSubmitted value)? submitted,
    TResult Function(TranslateSourceLangChanged value)? sourceLangChanged,
    TResult Function(TranslateTargetLangChanged value)? targetLangChanged,
    TResult Function(TranslateInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class TranslateInitialized implements TranslateEvent {
  const factory TranslateInitialized() = _$TranslateInitialized;
}

/// @nodoc
mixin _$TranslateState {
  BlocStatus get status => throw _privateConstructorUsedError;
  Map<String, dynamic>? get translatedJson =>
      throw _privateConstructorUsedError;
  String get sourceLang => throw _privateConstructorUsedError;
  String get targetLang => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslateStateCopyWith<TranslateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateStateCopyWith<$Res> {
  factory $TranslateStateCopyWith(
          TranslateState value, $Res Function(TranslateState) then) =
      _$TranslateStateCopyWithImpl<$Res>;
  $Res call(
      {BlocStatus status,
      Map<String, dynamic>? translatedJson,
      String sourceLang,
      String targetLang});
}

/// @nodoc
class _$TranslateStateCopyWithImpl<$Res>
    implements $TranslateStateCopyWith<$Res> {
  _$TranslateStateCopyWithImpl(this._value, this._then);

  final TranslateState _value;
  // ignore: unused_field
  final $Res Function(TranslateState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? translatedJson = freezed,
    Object? sourceLang = freezed,
    Object? targetLang = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      translatedJson: translatedJson == freezed
          ? _value.translatedJson
          : translatedJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sourceLang: sourceLang == freezed
          ? _value.sourceLang
          : sourceLang // ignore: cast_nullable_to_non_nullable
              as String,
      targetLang: targetLang == freezed
          ? _value.targetLang
          : targetLang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TranslateStateCopyWith<$Res>
    implements $TranslateStateCopyWith<$Res> {
  factory _$$_TranslateStateCopyWith(
          _$_TranslateState value, $Res Function(_$_TranslateState) then) =
      __$$_TranslateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocStatus status,
      Map<String, dynamic>? translatedJson,
      String sourceLang,
      String targetLang});
}

/// @nodoc
class __$$_TranslateStateCopyWithImpl<$Res>
    extends _$TranslateStateCopyWithImpl<$Res>
    implements _$$_TranslateStateCopyWith<$Res> {
  __$$_TranslateStateCopyWithImpl(
      _$_TranslateState _value, $Res Function(_$_TranslateState) _then)
      : super(_value, (v) => _then(v as _$_TranslateState));

  @override
  _$_TranslateState get _value => super._value as _$_TranslateState;

  @override
  $Res call({
    Object? status = freezed,
    Object? translatedJson = freezed,
    Object? sourceLang = freezed,
    Object? targetLang = freezed,
  }) {
    return _then(_$_TranslateState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      translatedJson: translatedJson == freezed
          ? _value._translatedJson
          : translatedJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      sourceLang: sourceLang == freezed
          ? _value.sourceLang
          : sourceLang // ignore: cast_nullable_to_non_nullable
              as String,
      targetLang: targetLang == freezed
          ? _value.targetLang
          : targetLang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TranslateState extends _TranslateState {
  const _$_TranslateState(
      {required this.status,
      final Map<String, dynamic>? translatedJson,
      required this.sourceLang,
      required this.targetLang})
      : _translatedJson = translatedJson,
        super._();

  @override
  final BlocStatus status;
  final Map<String, dynamic>? _translatedJson;
  @override
  Map<String, dynamic>? get translatedJson {
    final value = _translatedJson;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String sourceLang;
  @override
  final String targetLang;

  @override
  String toString() {
    return 'TranslateState(status: $status, translatedJson: $translatedJson, sourceLang: $sourceLang, targetLang: $targetLang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TranslateState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._translatedJson, _translatedJson) &&
            const DeepCollectionEquality()
                .equals(other.sourceLang, sourceLang) &&
            const DeepCollectionEquality()
                .equals(other.targetLang, targetLang));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_translatedJson),
      const DeepCollectionEquality().hash(sourceLang),
      const DeepCollectionEquality().hash(targetLang));

  @JsonKey(ignore: true)
  @override
  _$$_TranslateStateCopyWith<_$_TranslateState> get copyWith =>
      __$$_TranslateStateCopyWithImpl<_$_TranslateState>(this, _$identity);
}

abstract class _TranslateState extends TranslateState {
  const factory _TranslateState(
      {required final BlocStatus status,
      final Map<String, dynamic>? translatedJson,
      required final String sourceLang,
      required final String targetLang}) = _$_TranslateState;
  const _TranslateState._() : super._();

  @override
  BlocStatus get status;
  @override
  Map<String, dynamic>? get translatedJson;
  @override
  String get sourceLang;
  @override
  String get targetLang;
  @override
  @JsonKey(ignore: true)
  _$$_TranslateStateCopyWith<_$_TranslateState> get copyWith =>
      throw _privateConstructorUsedError;
}
