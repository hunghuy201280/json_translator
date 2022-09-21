// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadFileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() picked,
    required TResult Function(Map<String, dynamic> result) fileSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? picked,
    TResult Function(Map<String, dynamic> result)? fileSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? picked,
    TResult Function(Map<String, dynamic> result)? fileSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadFilePicked value) picked,
    required TResult Function(UploadFileSaved value) fileSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadFilePicked value)? picked,
    TResult Function(UploadFileSaved value)? fileSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadFilePicked value)? picked,
    TResult Function(UploadFileSaved value)? fileSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileEventCopyWith<$Res> {
  factory $UploadFileEventCopyWith(
          UploadFileEvent value, $Res Function(UploadFileEvent) then) =
      _$UploadFileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadFileEventCopyWithImpl<$Res>
    implements $UploadFileEventCopyWith<$Res> {
  _$UploadFileEventCopyWithImpl(this._value, this._then);

  final UploadFileEvent _value;
  // ignore: unused_field
  final $Res Function(UploadFileEvent) _then;
}

/// @nodoc
abstract class _$$UploadFilePickedCopyWith<$Res> {
  factory _$$UploadFilePickedCopyWith(
          _$UploadFilePicked value, $Res Function(_$UploadFilePicked) then) =
      __$$UploadFilePickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadFilePickedCopyWithImpl<$Res>
    extends _$UploadFileEventCopyWithImpl<$Res>
    implements _$$UploadFilePickedCopyWith<$Res> {
  __$$UploadFilePickedCopyWithImpl(
      _$UploadFilePicked _value, $Res Function(_$UploadFilePicked) _then)
      : super(_value, (v) => _then(v as _$UploadFilePicked));

  @override
  _$UploadFilePicked get _value => super._value as _$UploadFilePicked;
}

/// @nodoc

class _$UploadFilePicked implements UploadFilePicked {
  const _$UploadFilePicked();

  @override
  String toString() {
    return 'UploadFileEvent.picked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadFilePicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() picked,
    required TResult Function(Map<String, dynamic> result) fileSaved,
  }) {
    return picked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? picked,
    TResult Function(Map<String, dynamic> result)? fileSaved,
  }) {
    return picked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? picked,
    TResult Function(Map<String, dynamic> result)? fileSaved,
    required TResult orElse(),
  }) {
    if (picked != null) {
      return picked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadFilePicked value) picked,
    required TResult Function(UploadFileSaved value) fileSaved,
  }) {
    return picked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadFilePicked value)? picked,
    TResult Function(UploadFileSaved value)? fileSaved,
  }) {
    return picked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadFilePicked value)? picked,
    TResult Function(UploadFileSaved value)? fileSaved,
    required TResult orElse(),
  }) {
    if (picked != null) {
      return picked(this);
    }
    return orElse();
  }
}

abstract class UploadFilePicked implements UploadFileEvent {
  const factory UploadFilePicked() = _$UploadFilePicked;
}

/// @nodoc
abstract class _$$UploadFileSavedCopyWith<$Res> {
  factory _$$UploadFileSavedCopyWith(
          _$UploadFileSaved value, $Res Function(_$UploadFileSaved) then) =
      __$$UploadFileSavedCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> result});
}

/// @nodoc
class __$$UploadFileSavedCopyWithImpl<$Res>
    extends _$UploadFileEventCopyWithImpl<$Res>
    implements _$$UploadFileSavedCopyWith<$Res> {
  __$$UploadFileSavedCopyWithImpl(
      _$UploadFileSaved _value, $Res Function(_$UploadFileSaved) _then)
      : super(_value, (v) => _then(v as _$UploadFileSaved));

  @override
  _$UploadFileSaved get _value => super._value as _$UploadFileSaved;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$UploadFileSaved(
      result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UploadFileSaved implements UploadFileSaved {
  const _$UploadFileSaved(final Map<String, dynamic> result) : _result = result;

  final Map<String, dynamic> _result;
  @override
  Map<String, dynamic> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_result);
  }

  @override
  String toString() {
    return 'UploadFileEvent.fileSaved(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileSaved &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  _$$UploadFileSavedCopyWith<_$UploadFileSaved> get copyWith =>
      __$$UploadFileSavedCopyWithImpl<_$UploadFileSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() picked,
    required TResult Function(Map<String, dynamic> result) fileSaved,
  }) {
    return fileSaved(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? picked,
    TResult Function(Map<String, dynamic> result)? fileSaved,
  }) {
    return fileSaved?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? picked,
    TResult Function(Map<String, dynamic> result)? fileSaved,
    required TResult orElse(),
  }) {
    if (fileSaved != null) {
      return fileSaved(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadFilePicked value) picked,
    required TResult Function(UploadFileSaved value) fileSaved,
  }) {
    return fileSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadFilePicked value)? picked,
    TResult Function(UploadFileSaved value)? fileSaved,
  }) {
    return fileSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadFilePicked value)? picked,
    TResult Function(UploadFileSaved value)? fileSaved,
    required TResult orElse(),
  }) {
    if (fileSaved != null) {
      return fileSaved(this);
    }
    return orElse();
  }
}

abstract class UploadFileSaved implements UploadFileEvent {
  const factory UploadFileSaved(final Map<String, dynamic> result) =
      _$UploadFileSaved;

  Map<String, dynamic> get result;
  @JsonKey(ignore: true)
  _$$UploadFileSavedCopyWith<_$UploadFileSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadFileState {
  File? get pickedFile => throw _privateConstructorUsedError;
  BlocStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadFileStateCopyWith<UploadFileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileStateCopyWith<$Res> {
  factory $UploadFileStateCopyWith(
          UploadFileState value, $Res Function(UploadFileState) then) =
      _$UploadFileStateCopyWithImpl<$Res>;
  $Res call({File? pickedFile, BlocStatus status});
}

/// @nodoc
class _$UploadFileStateCopyWithImpl<$Res>
    implements $UploadFileStateCopyWith<$Res> {
  _$UploadFileStateCopyWithImpl(this._value, this._then);

  final UploadFileState _value;
  // ignore: unused_field
  final $Res Function(UploadFileState) _then;

  @override
  $Res call({
    Object? pickedFile = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      pickedFile: pickedFile == freezed
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_UploadFileStateCopyWith<$Res>
    implements $UploadFileStateCopyWith<$Res> {
  factory _$$_UploadFileStateCopyWith(
          _$_UploadFileState value, $Res Function(_$_UploadFileState) then) =
      __$$_UploadFileStateCopyWithImpl<$Res>;
  @override
  $Res call({File? pickedFile, BlocStatus status});
}

/// @nodoc
class __$$_UploadFileStateCopyWithImpl<$Res>
    extends _$UploadFileStateCopyWithImpl<$Res>
    implements _$$_UploadFileStateCopyWith<$Res> {
  __$$_UploadFileStateCopyWithImpl(
      _$_UploadFileState _value, $Res Function(_$_UploadFileState) _then)
      : super(_value, (v) => _then(v as _$_UploadFileState));

  @override
  _$_UploadFileState get _value => super._value as _$_UploadFileState;

  @override
  $Res call({
    Object? pickedFile = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_UploadFileState(
      pickedFile: pickedFile == freezed
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ));
  }
}

/// @nodoc

class _$_UploadFileState extends _UploadFileState {
  const _$_UploadFileState({this.pickedFile, required this.status}) : super._();

  @override
  final File? pickedFile;
  @override
  final BlocStatus status;

  @override
  String toString() {
    return 'UploadFileState(pickedFile: $pickedFile, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadFileState &&
            const DeepCollectionEquality()
                .equals(other.pickedFile, pickedFile) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pickedFile),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_UploadFileStateCopyWith<_$_UploadFileState> get copyWith =>
      __$$_UploadFileStateCopyWithImpl<_$_UploadFileState>(this, _$identity);
}

abstract class _UploadFileState extends UploadFileState {
  const factory _UploadFileState(
      {final File? pickedFile,
      required final BlocStatus status}) = _$_UploadFileState;
  const _UploadFileState._() : super._();

  @override
  File? get pickedFile;
  @override
  BlocStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_UploadFileStateCopyWith<_$_UploadFileState> get copyWith =>
      throw _privateConstructorUsedError;
}
