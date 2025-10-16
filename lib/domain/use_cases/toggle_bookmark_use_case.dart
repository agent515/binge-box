import 'package:binge_box/domain/repositories/bookmark_repo.dart';
import 'package:binge_box/domain/utils/use_case.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class ToggleBookmarkUseCase implements UseCase<bool, int> {
  ToggleBookmarkUseCase(this.repo);

  final BookmarkRepo repo;

  @override
  Future<Either<AppError, bool>> call(int movieId) async {
    final result = await repo.isBookmarked(movieId);
    return result.fold((l) => Left(l), (wasBookmarked) async {
      if (wasBookmarked) {
        await repo.removeBookmark(movieId);
        return Right(false);
      } else {
        await repo.addBookmark(movieId);
        return Right(true);
      }
    });
  }
}
