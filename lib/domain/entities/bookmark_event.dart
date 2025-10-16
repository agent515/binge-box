class BookmarkEvent {
  final int movieId;
  final bool added; // true if added, false if removed

  BookmarkEvent({
    required this.movieId,
    required this.added,
  });
}
