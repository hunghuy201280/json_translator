import 'package:json_translator/features/translate/bloc/translate_bloc/translate_bloc.dart';
import 'package:json_translator/features/translate/bloc/upload_file_bloc/upload_file_bloc.dart';
import 'package:json_translator/features/translate/presentation/screens/translate_screen.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case TranslateScreen.id:
        return FluentPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => TranslateBloc(),
              ),
              BlocProvider(
                create: (context) =>
                    UploadFileBloc(context.read<TranslateBloc>()),
              ),
            ],
            child: const TranslateScreen(),
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      ),
      settings: const RouteSettings(
        name: '/error',
      ),
    );
  }
}
