import 'package:fluent_ui/fluent_ui.dart';

Future showErrorDialog(
  BuildContext context, {
  String title = "Error",
  required String content,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return ContentDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          Button(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      );
    },
  );
}
