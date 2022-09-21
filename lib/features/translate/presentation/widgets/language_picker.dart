import 'package:json_translator/constants/languages.dart';
import 'package:fluent_ui/fluent_ui.dart';

class LanguagePicker extends StatelessWidget {
  const LanguagePicker(
      {Key? key, required this.onSelected, required this.selectedLanguage})
      : super(key: key);
  final ValueChanged<String> onSelected;
  final String selectedLanguage;
  @override
  Widget build(BuildContext context) {
    return Combobox<String>(
      value: selectedLanguage,
      onChanged: (value) {
        if (value != null) {
          onSelected(value);
        }
      },
      items: kLanguages.keys
          .map(
            (e) => ComboboxItem(
              value: e,
              child: Text(e),
            ),
          )
          .toList(),
    );
  }
}
