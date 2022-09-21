part of 'translate_bloc.dart';

@freezed
class TranslateEvent with _$TranslateEvent {
  const factory TranslateEvent.submitted(Map<String, dynamic> source) =
      TranslateSubmitted;
  const factory TranslateEvent.sourceLangChanged(String value) =
      TranslateSourceLangChanged;
  const factory TranslateEvent.targetLangChanged(String value) =
      TranslateTargetLangChanged;
  const factory TranslateEvent.initialized() = TranslateInitialized;
}
