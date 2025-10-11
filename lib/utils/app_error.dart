class AppError {
  final String title;
  final String? description;

  AppError({
    this.title = 'Unknown Error',
    this.description,
  });

  @override
  String toString() {
    return "App Error: $title $description";
  }
}
