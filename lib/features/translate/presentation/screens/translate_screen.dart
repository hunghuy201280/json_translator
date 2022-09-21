import 'package:json_translator/features/translate/bloc/translate_bloc/translate_bloc.dart';
import 'package:json_translator/features/translate/bloc/upload_file_bloc/upload_file_bloc.dart';
import 'package:json_translator/features/translate/presentation/widgets/file_picker_widget.dart';
import 'package:json_translator/features/translate/presentation/widgets/source_target_language_picker.dart';
import 'package:json_translator/features/translate/presentation/widgets/translate_view.dart';
import 'package:json_translator/utils/bloc_status.dart';
import 'package:json_translator/utils/extensions.dart';
import 'package:json_translator/utils/utils.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';

class TranslateScreen extends StatelessWidget {
  const TranslateScreen({Key? key}) : super(key: key);
  static const id = "TranslateScreen";
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UploadFileBloc, UploadFileState>(
          listener: (context, state) {
            final status = state.status;
            if (status is Error) {
              showErrorDialog(
                context,
                content: status.error.toString(),
              );
            }
            if (status is Loading) {
              context.loaderOverlay.show();
            } else {
              context.loaderOverlay.hide();
            }
          },
        ),
        BlocListener<TranslateBloc, TranslateState>(
          listener: (context, state) {
            final status = state.status;
            if (status is Error) {
              showErrorDialog(
                context,
                content: status.error.toString(),
              );
            }
            if (status is Loading) {
              context.loaderOverlay.show();
            } else {
              context.loaderOverlay.hide();
            }
          },
        ),
      ],
      child: ScaffoldPage(
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const FilePickerWidget(),
              const SourceTargetLanguagePicker(),
              const TranslateView(),
              56.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
