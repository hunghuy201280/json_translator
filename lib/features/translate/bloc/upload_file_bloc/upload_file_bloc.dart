import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:json_translator/features/translate/bloc/translate_bloc/translate_bloc.dart';
import 'package:json_translator/utils/bloc_status.dart';
import 'package:json_translator/utils/extensions.dart';
import 'package:json_translator/utils/logger.dart';
import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart';

part 'upload_file_bloc.freezed.dart';
part 'upload_file_event.dart';
part 'upload_file_state.dart';

class UploadFileBloc extends Bloc<UploadFileEvent, UploadFileState> {
  UploadFileBloc(this.translateBloc) : super(UploadFileState.initial()) {
    _mapEventToState();
  }

  final TranslateBloc translateBloc;

  //#region map event to state
  void _mapEventToState() {
    on<UploadFilePicked>(_uploadFilePickedToState);
    on<UploadFileSaved>(_uploadFileSavedToState);
  }

  FutureOr<void> _uploadFilePickedToState(
      UploadFilePicked event, Emitter<UploadFileState> emit) async {
    try {
      emit(state.copyWith(status: const Loading()));
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowedExtensions: ["json"],
      );
      if (result == null) {
        emit(
          state.copyWith(
            status: const Idle(),
          ),
        );
      }
      if (result != null) {
        File file = File(result.files.single.path!);
        if (!file.path.ext.contains("json")) {
          throw "Unsupported file";
        }

        emit(
          state.copyWith(
            pickedFile: file,
            status: const Idle(),
          ),
        );
        translateBloc.add(const TranslateEvent.initialized());
      }
    } catch (e, trace) {
      printLog(
        this,
        message: "_uploadFilePickedToState",
        error: e,
        trace: trace,
      );
      emit(
        state.copyWith(
          status: Error(e),
        ),
      );
      emit(
        state.copyWith(
          status: const Idle(),
        ),
      );
    }
  }

  FutureOr<void> _uploadFileSavedToState(
      UploadFileSaved event, Emitter<UploadFileState> emit) async {
    final pickedFile = state.pickedFile;
    if (pickedFile == null) {
      return;
    }
    try {
      emit(state.copyWith(status: const Loading()));
      String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

      if (selectedDirectory == null) {
        emit(
          state.copyWith(
            status: const Idle(),
          ),
        );
        return;
      }

      // final suffix = DateFormat("yyyy_MM_dd_HH_mm_ss").format(DateTime.now());
      final fileName =
          "${basenameWithoutExtension(pickedFile.path)}_result.json";
      final file = File("$selectedDirectory/$fileName");
      final jsonString = jsonEncode(event.result);
      await file.writeAsString(
        jsonString,
        flush: true,
      );

      emit(
        state.copyWith(
          status: const Idle(),
        ),
      );
    } catch (e, trace) {
      printLog(
        this,
        message: "_uploadFileSavedToState",
        error: e,
        trace: trace,
      );
      emit(
        state.copyWith(
          status: const Idle(),
        ),
      );
    }
  }
  //#endregion map event to state
}
