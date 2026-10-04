class AppDatabaseException implements Exception {
  final String message;
  final Object? error;
  final StackTrace? stackTrace;

  const AppDatabaseException(
      this.message, {
        this.error,
        this.stackTrace,
      });

  @override
  String toString() {
    return 'DatabaseException: $message';
  }
}