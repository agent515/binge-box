import 'package:binge_box/domain/repositories/bookmark_repo.dart';
import 'package:binge_box/domain/utils/use_case.dart';
import 'package:binge_box/utils/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckBookmarkUseCase implements UseCase<bool, int> {
  CheckBookmarkUseCase(this.repo);

  final BookmarkRepo repo;

  @override
  Future<Either<AppError, bool>> call(int param) => repo.isBookmarked(param);
}
