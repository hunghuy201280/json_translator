part of 'translate_bloc.dart';

@freezed
class TranslateState with _$TranslateState {
  const TranslateState._();
  const factory TranslateState({
    required BlocStatus status,
    Map<String, dynamic>? translatedJson,
    required String sourceLang,
    required String targetLang,
  }) = _TranslateState;

  factory TranslateState.initial() => const TranslateState(
        status: Idle(),
        translatedJson: null,
        sourceLang: 'English',
        targetLang: 'Myanmar',
      );
}
