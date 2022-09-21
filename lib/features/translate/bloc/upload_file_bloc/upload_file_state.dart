part of 'upload_file_bloc.dart';

@freezed
class UploadFileState with _$UploadFileState {
  const UploadFileState._();

  const factory UploadFileState({
    File? pickedFile,
    required BlocStatus status,
  }) = _UploadFileState;

  factory UploadFileState.initial() => const UploadFileState(status: Idle());
}
