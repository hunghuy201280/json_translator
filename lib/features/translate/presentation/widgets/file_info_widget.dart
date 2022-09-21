import 'dart:io';

import 'package:json_translator/utils/extensions.dart';
import 'package:file_icon/file_icon.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:path/path.dart';

class FileInfoWidget extends StatelessWidget {
  const FileInfoWidget({
    Key? key,
    required this.file,
  }) : super(key: key);

  final File file;

  @override
  Widget build(BuildContext context) {
    final fileName = basename(file.path);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FileIcon(
          fileName,
        ),
        8.horizontalSpace,
        Text(
          fileName,
          style: context.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
