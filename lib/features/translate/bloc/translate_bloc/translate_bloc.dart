import 'dart:async';

import 'package:json_translator/constants/languages.dart';
import 'package:json_translator/utils/bloc_status.dart';
import 'package:json_translator/utils/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translator/translator.dart';

part 'translate_bloc.freezed.dart';
part 'translate_event.dart';
part 'translate_state.dart';

class TranslateBloc extends Bloc<TranslateEvent, TranslateState> {
  TranslateBloc() : super(TranslateState.initial()) {
    _mapEventToState();
  }
  final translator = GoogleTranslator();

  //#region map event to state

  void _mapEventToState() {
    on<TranslateSubmitted>(_translateSubmittedToState);
    on<TranslateSourceLangChanged>(_translateSourceLangChangedToState);
    on<TranslateTargetLangChanged>(_translateTargetLangChangedToState);
    on<TranslateInitialized>(
        (event, emit) => emit(state.copyWith(translatedJson: null)));
  }

  FutureOr<void> _translateSubmittedToState(
      TranslateSubmitted event, Emitter<TranslateState> emit) async {
    try {
      emit(state.copyWith(status: const Loading()));
      final result = <String, dynamic>{};
      final futures = <Future<Translation>>[];
      final source = event.source;

      for (final key in source.keys) {
        futures.add(
          translator.translate(source[key]!,
              from: kLanguages[state.sourceLang]!,
              to: kLanguages[state.targetLang]!),
        );
      }
      final futureResult = await Future.wait(futures);
      for (final key in source.keys) {
        result[key] = futureResult.removeAt(0).text;
      }
      // var result = (await _translate(event.source)) as Map;
      // result.forEach((key, value) {});
      // printLog(this, message: result);

      emit(state.copyWith(translatedJson: result, status: const Idle()));
    } catch (e, trace) {
      printLog(this, message: "Error", error: e, trace: trace);
      emit(state.copyWith(translatedJson: null, status: const Error()));
      emit(state.copyWith(translatedJson: null, status: const Idle()));
    }
  }

  FutureOr<void> _translateSourceLangChangedToState(
      TranslateSourceLangChanged event, Emitter<TranslateState> emit) {
    emit(state.copyWith(sourceLang: event.value));
  }

  FutureOr<void> _translateTargetLangChangedToState(
      TranslateTargetLangChanged event, Emitter<TranslateState> emit) {
    emit(state.copyWith(targetLang: event.value));
  }
  //#endregion map event to state

  //#region helper

  Future<Translation> _ggTrans(String input) async {
    return await translator.translate(input,
        from: kLanguages[state.sourceLang]!, to: kLanguages[state.targetLang]!);
  }

  Future _translate(dynamic input) async {
    if (input is Map) {
      final result = {};
      for (final key in input.keys) {
        result[key] = await _translate(input[key]);
      }
      return result;
    } else if (input is String) {
      return await _ggTrans(input);
    }
  }

  //#endregion helper

}
