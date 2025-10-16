import 'package:binge_box/domain/repositories/bookmark_repo.dart';
import 'package:binge_box/domain/utils/use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:binge_box/domain/entities/bookmark_event.dart';

@injectable
class GetBookmarksChangedUseCase
    implements NoParamUseCaseSimple<Stream<BookmarkEvent>> {
  GetBookmarksChangedUseCase(this._repo);

  final BookmarkRepo _repo;

  @override
  Stream<BookmarkEvent> call() => _repo.bookmarksChanged;
}
