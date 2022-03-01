import 'package:injectable/injectable.dart';
import 'package:project/data/adapters/posts.dart';
import 'package:project/data/network/posts.dart';
import 'package:project/data/storage/storage.dart';
import 'package:project/domain/entities/posts.dart';

abstract class PostsRepository {
  Future<List<PostsDto>> getPostsByUserId(int userId);
  Future<PostsDto?> getPostsById(int id);
  Future<List<CommentDto>> getCommentByPostId(int postId);
  Future<List<CommentDto>> addComment(CommentDto comment);
}

@Injectable(as: PostsRepository)
class PostsRepositoryImpl implements PostsRepository {
  final PostsService _getPostsService;
  final UserStorage _userStorage;

  PostsRepositoryImpl(this._getPostsService, this._userStorage);

  @override
  Future<List<PostsDto>> getPostsByUserId(int userId) async {
    List<PostsDto> posts = [];

    if (_userStorage.countPosts() == 0) {
      final result = await _getPostsService.getPosts();
      if (result != null) {
        posts = result.map((e) => e.toDomain).toList();
        await _userStorage.addPosts(posts);
      }
    }
    posts = await _userStorage.getPostsByUserId(userId);

    return posts;
  }

  @override
  Future<PostsDto?> getPostsById(int id) async {
    if (_userStorage.countPosts() == 0) {
      final result = await _getPostsService.getPosts();
      if (result != null) {
        var posts = result.map((e) => e.toDomain).toList();
        await _userStorage.addPosts(posts);
      }
    }
    PostsDto? posts = await _userStorage.getPostsById(id);
    return posts;
  }

  @override
  Future<List<CommentDto>> getCommentByPostId(int postId) async {
    var comments = await _userStorage.getCommentsByPostId(postId);
    if (comments.isEmpty) {
      final result = await _getPostsService.getComments(postId);
      if (result != null) {
        comments = result.map((e) => e.toDomain).toList();
        await _userStorage.addComments(comments);
      }
    }
    return comments;
  }

  @override
  Future<List<CommentDto>> addComment(CommentDto comment) async {
    await _userStorage.addComment(comment);
    var comments = await _userStorage.getCommentsByPostId(comment.postId!);
    return comments;
  }
}
