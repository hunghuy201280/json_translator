import 'dart:ui';

import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 100,
    lineLength: 50,
    colors: true,
    printEmojis: true,
    printTime: true,
  ),
);

const kDesignSize = Size(390, 844);

void printLog(Object parent,
    {required dynamic message, StackTrace? trace, dynamic error}) {
  assert((error != null && trace != null) || (trace == null && error == null),
      "Error and stack trace must be provided if an error happened");
  final mes = "[Booking][${parent.runtimeType}] $message";
  if (error != null) {
    return logger.e(
      mes,
      error.toString(),
      trace,
    );
  }
  logger.i(mes);
}
