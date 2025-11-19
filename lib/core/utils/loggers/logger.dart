import 'dart:developer';

class AppLogger {
  static void d(String message) {
    log(message, name: 'DEBUG');
  }

  static void e(String message, {Object? error, StackTrace? stackTrace}) {
    log(message, name: 'ERROR', error: error, stackTrace: stackTrace);
  }
}
