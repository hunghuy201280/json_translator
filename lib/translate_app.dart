import 'package:json_translator/features/translate/presentation/screens/translate_screen.dart';
import 'package:json_translator/routing/app_route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:loader_overlay/loader_overlay.dart';

class TranslateApp extends StatelessWidget {
  const TranslateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: "Auto Translator",
      onGenerateRoute: AppRoute.onGenerateRoute,
      builder: (context, widget) {
        return LoaderOverlay(child: widget!);
      },
      initialRoute: TranslateScreen.id,
    );
  }
}
