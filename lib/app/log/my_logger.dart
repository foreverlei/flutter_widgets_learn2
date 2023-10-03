import 'package:logger/logger.dart';

class MyLogger {
  MyLogger._();
  static final logger = Logger(
    printer: SimplePrinter(),
  );
  static d(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    logger.d(message, time: time, error: error, stackTrace: stackTrace);
  }
}
