import 'package:injectable/injectable.dart';
import 'package:project/data/client.dart';
import 'package:project/data/models/posts.dart';
import 'package:project/resources/logger.dart';

abstract class PostsService {
  Future<List<PostsNetworkDto>?> getPosts();
  Future<List<CommentNetworkDto>?> getComments(int id);
}

@Injectable(as: PostsService)
class PostsServiceImpl implements PostsService {
  final EclipseApi _api;

  PostsServiceImpl(this._api);

  @override
  Future<List<PostsNetworkDto>?> getPosts() async {
    final result = await _api.client.get(
      'posts',
    );

    Log.info('PostsServiceImpl - getPosts: ${result.data}');
    return List<PostsNetworkDto>.from(
        result.data.map((e) => PostsNetworkDto.fromJson(e)));
  }

  @override
  Future<List<CommentNetworkDto>?> getComments(int id) async {
    final result = await _api.client.get(
      'posts/$id/comments',
    );

    Log.info('PostsServiceImpl - getComments: ${result.data}');
    return List<CommentNetworkDto>.from(
        result.data.map((e) => CommentNetworkDto.fromJson(e)));
  }
}
