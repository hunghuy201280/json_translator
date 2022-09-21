import 'package:dotted_border/dotted_border.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_translator/constants/app_colors.dart';
import 'package:json_translator/features/translate/bloc/upload_file_bloc/upload_file_bloc.dart';
import 'package:json_translator/utils/extensions.dart';

class FilePickerWidget extends StatelessWidget {
  const FilePickerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uploadFileBloc = context.read<UploadFileBloc>();
    final uploadFileState = context.watch<UploadFileBloc>().state;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
      child: DottedBorder(
        radius: const Radius.circular(24),
        dashPattern: const [6, 1],
        color: kBlue1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            48.verticalSpace,
            Center(
              child: Text(
                "Choose a file",
                style: context.textTheme.titleLarge,
              ),
            ),
            8.verticalSpace,
            Text(
              "Upload a .json",
              style: context.textTheme.bodyMedium,
            ),
            8.verticalSpace,
            8.verticalSpace,
            FilledButton(
              onPressed: () {
                uploadFileBloc.add(const UploadFileEvent.picked());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Browse your computer",
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            48.verticalSpace,
          ],
        ),
      ),
    );
  }
}
