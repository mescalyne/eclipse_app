import 'package:injectable/injectable.dart';
import 'package:project/data/repository/posts.dart';
import 'package:project/domain/entities/posts.dart';

abstract class GetPostsByUserIdUseCase {
  Future<List<PostsDto>> call(int useId);
}

@Injectable(as: GetPostsByUserIdUseCase)
class GetPostsByUserIdImpl implements GetPostsByUserIdUseCase {
  final PostsRepository _repository;

  GetPostsByUserIdImpl(this._repository);

  @override
  Future<List<PostsDto>> call(int useId) => _repository.getPostsByUserId(useId);
}

abstract class GetPostsByIdUseCase {
  Future<PostsDto?> call(int id);
}

@Injectable(as: GetPostsByIdUseCase)
class GetPostsByIdImpl implements GetPostsByIdUseCase {
  final PostsRepository _repository;

  GetPostsByIdImpl(this._repository);

  @override
  Future<PostsDto?> call(int id) => _repository.getPostsById(id);
}

abstract class GetCommentsByPostIdUseCase {
  Future<List<CommentDto>?> call(int postId);
}

@Injectable(as: GetCommentsByPostIdUseCase)
class GetCommentsByPostIdUseCaseImpl implements GetCommentsByPostIdUseCase {
  final PostsRepository _repository;

  GetCommentsByPostIdUseCaseImpl(this._repository);

  @override
  Future<List<CommentDto>?> call(int postId) =>
      _repository.getCommentByPostId(postId);
}

abstract class AddCommetUseCase {
  Future<List<CommentDto>?> call(CommentDto comment);
}

@Injectable(as: AddCommetUseCase)
class AddCommetUseCaseImpl implements AddCommetUseCase {
  final PostsRepository _repository;

  AddCommetUseCaseImpl(this._repository);

  @override
  Future<List<CommentDto>?> call(CommentDto comment) =>
      _repository.addComment(comment);
}
