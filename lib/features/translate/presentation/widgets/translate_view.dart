import 'dart:convert';

import 'package:json_translator/constants/constants.dart';
import 'package:json_translator/features/translate/bloc/translate_bloc/translate_bloc.dart';
import 'package:json_translator/features/translate/bloc/upload_file_bloc/upload_file_bloc.dart';
import 'package:json_translator/features/translate/presentation/widgets/json_viewer_widget.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TranslateView extends StatelessWidget {
  const TranslateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uploadFileState = context.watch<UploadFileBloc>().state;
    final translateState = context.watch<TranslateBloc>().state;
    final file = uploadFileState.pickedFile;
    if (file == null) {
      return kEmpty;
    }
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final parsedJson = json.map((key, value) => MapEntry(key, value));
    return ComparableSimpleJsonViewer(
      json1: parsedJson,
      json2: translateState.translatedJson,
    );
    // return Row(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     16.horizontalSpace,
    //     Expanded(
    //       child: JsonViewerWidget(
    //         file: file,
    //         json: parsedJson,
    //       ),
    //     ),
    //     16.horizontalSpace,
    //     16.horizontalSpace,
    //     Expanded(
    //       child: BlocBuilder<TranslateBloc, TranslateState>(
    //         builder: (context, state) {
    //           final json = state.translatedJson;
    //           if (json == null) {
    //             return kEmpty;
    //           }
    //           return JsonViewerWidget(
    //             file: file,
    //             json: json,
    //           );
    //         },
    //       ),
    //     ),
    //     16.horizontalSpace,
    //   ],
    // );
  }
}
