import 'dart:io';

import 'package:json_translator/constants/app_colors.dart';
import 'package:json_translator/features/translate/presentation/widgets/file_info_widget.dart';
import 'package:json_translator/utils/extensions.dart';
import 'package:collection/collection.dart';
import 'package:fluent_ui/fluent_ui.dart';

class JsonViewerWidget extends StatelessWidget {
  const JsonViewerWidget({Key? key, required this.json, required this.file})
      : super(key: key);
  final Map<String, String> json;
  final File file;
  @override
  Widget build(BuildContext context) {
    final cloned = {...json};
    final sanitized = <String, String>{};
    for (final keys in cloned.keys) {
      if (keys.length > 30) {
        sanitized["${keys.substring(0, 30)}..."] = cloned[keys]!;
      } else {
        sanitized[keys] = cloned[keys]!;
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FileInfoWidget(
          file: file,
        ),
        16.verticalSpace,
        ComparableSimpleJsonViewer(
          json1: sanitized,
          json2: {},
        ),
      ],
    );
  }
}

class ComparableSimpleJsonViewer extends StatelessWidget {
  const ComparableSimpleJsonViewer(
      {Key? key, required this.json1, required this.json2})
      : super(key: key);
  final Map<String, dynamic> json1;
  final Map<String, dynamic>? json2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: json1.keys
          .mapIndexed(
            (index, key) => Padding(
              padding: const EdgeInsets.only(
                bottom: 8,
              ),
              child: Container(
                color: index % 2 == 0 ? Colors.white : kGray1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    24.horizontalSpace,
                    JsonPair(
                      jsonKey: key,
                      value: json1[key]!,
                    ),
                    16.horizontalSpace,
                    if (json2?[key] == null)
                      const Spacer()
                    else
                      JsonPair(
                        jsonKey: key,
                        value: json2![key]!,
                      ),
                    24.horizontalSpace,
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class JsonPair extends StatelessWidget {
  const JsonPair({Key? key, required this.jsonKey, required this.value})
      : super(key: key);
  final String jsonKey;
  final dynamic value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "\"$jsonKey\": ",
            style: context.textTheme.bodyMedium?.copyWith(color: kBlue2),
          ),
          Expanded(
            child: Text(
              "\"$value\"",
              style: context.textTheme.bodyMedium?.copyWith(
                color: kOrange1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
