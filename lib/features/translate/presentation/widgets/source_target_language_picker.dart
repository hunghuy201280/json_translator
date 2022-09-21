import 'dart:convert';

import 'package:json_translator/features/translate/bloc/translate_bloc/translate_bloc.dart';
import 'package:json_translator/features/translate/bloc/upload_file_bloc/upload_file_bloc.dart';
import 'package:json_translator/features/translate/presentation/widgets/language_picker.dart';
import 'package:json_translator/utils/extensions.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SourceTargetLanguagePicker extends StatelessWidget {
  const SourceTargetLanguagePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final translateBloc = context.watch<TranslateBloc>();
    final translateState = translateBloc.state;
    final uploadFileBloc = context.watch<UploadFileBloc>();

    final uploadFileState = uploadFileBloc.state;
    final file = uploadFileState.pickedFile;

    return Row(
      children: [
        40.horizontalSpace,
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: LanguagePicker(
              onSelected: (value) {
                translateBloc.add(TranslateEvent.sourceLangChanged(value));
              },
              selectedLanguage: translateState.sourceLang,
            ),
          ),
        ),
        if (file != null)
          IconButton(
            icon: RotatedBox(
              quarterTurns: 2,
              child: Icon(
                FluentIcons.skype_arrow,
                color: context.colorScheme.primary,
                size: 32,
              ),
            ),
            onPressed: () {
              translateBloc.add(
                TranslateSubmitted(
                  jsonDecode(file.readAsStringSync()),
                ),
              );
            },
          ),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: LanguagePicker(
              onSelected: (value) {
                translateBloc.add(TranslateEvent.targetLangChanged(value));
              },
              selectedLanguage: translateState.targetLang,
            ),
          ),
        ),
        Visibility(
          visible: translateState.translatedJson != null,
          child: IconButton(
            icon: Icon(
              FluentIcons.download_document,
              color: context.colorScheme.primary,
              size: 16,
            ),
            onPressed: () {
              uploadFileBloc.add(
                  UploadFileEvent.fileSaved(translateState.translatedJson!));
            },
          ),
        ),
        40.horizontalSpace,
      ],
    );
  }
}
