import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:project/data/storage/album.dart';
import 'package:project/data/storage/comment.dart';
import 'package:project/data/storage/posts.dart';
import 'package:project/data/storage/user.dart';
import 'package:project/domain/entities/albums.dart';
import 'package:project/domain/entities/posts.dart';
import 'package:project/domain/entities/user.dart';

abstract class UserStorage {
  Future<void> addUsers(List<UserDto> users);
  Future<List<UserDto>> getUsers();
  int countUsers();

  Future<void> addPosts(List<PostsDto> users);
  Future<List<PostsDto>> getPostsByUserId(int userId);
  Future<PostsDto?> getPostsById(int id);
  int countPosts();

  Future<void> addAlbum(List<AlbumDto> albums);
  Future<int> countAlbumsByUserId(int userId);
  Future<List<AlbumDto>> getAlbumsByUserId(int userId);

  Future<void> addComments(List<CommentDto> comments);
  Future<List<CommentDto>> getCommentsByPostId(int postId);
  Future<void> addComment(CommentDto comment);

  Future<void> clear();
}

@Injectable(as: UserStorage)
class UserStorageHive implements UserStorage {
  static const _userBoxName = 'user';
  static const _postsBoxName = 'posts';
  static const _albumsBoxName = 'albums';
  static const _commentsBoxName = 'comments';

  static Future init() async {
    await Hive.openBox(_userBoxName);
    await Hive.openBox(_postsBoxName);
    await Hive.openBox(_albumsBoxName);
    await Hive.openBox(_commentsBoxName);
  }

  Box get _userHiveBox => Hive.box(_userBoxName);
  Box get _postsHiveBox => Hive.box(_postsBoxName);
  Box get _albumsHiveBox => Hive.box(_albumsBoxName);
  Box get _commentsHiveBox => Hive.box(_commentsBoxName);

  @override
  Future<void> clear() async {
    await _userHiveBox.clear();
    await _postsHiveBox.clear();
    await _albumsHiveBox.clear();
    await _commentsHiveBox.clear();
  }

  @override
  Future<void> addUsers(List<UserDto> users) async {
    for (int i = 0; i < users.length; i++) {
      var user = users[i];
      var person = UserHiveType()
        ..id = user.id
        ..name = user.name
        ..username = user.username
        ..email = user.email
        ..phone = user.phone
        ..website = user.website;

      await _userHiveBox.add(person);
    }
  }

  @override
  Future<List<UserDto>> getUsers() async {
    List<UserDto> users = [];
    for (int i = 0; i < _userHiveBox.length; i++) {
      UserHiveType elem = await _userHiveBox.getAt(i);
      var user = UserDto()
        ..id = elem.id
        ..name = elem.name
        ..username = elem.username
        ..email = elem.email
        ..phone = elem.phone
        ..website = elem.website;

      users.add(user);
    }
    return users;
  }

  @override
  int countUsers() {
    return _userHiveBox.length;
  }

  @override
  Future<void> addPosts(List<PostsDto> posts) async {
    for (int i = 0; i < posts.length; i++) {
      var element = posts[i];
      var post = PostsHiveType()
        ..id = element.id
        ..userId = element.userId
        ..body = element.body
        ..title = element.title;
      await _postsHiveBox.add(post);
    }
  }

  @override
  Future<List<PostsDto>> getPostsByUserId(int userId) async {
    List<PostsDto> posts = [];
    for (int i = 0; i < _postsHiveBox.length; i++) {
      PostsHiveType element = await _postsHiveBox.getAt(i);
      if (element.userId != userId) continue;
      var user = PostsDto()
        ..id = element.id
        ..userId = element.userId
        ..body = element.body
        ..title = element.title;

      posts.add(user);
    }
    return posts;
  }

  @override
  Future<PostsDto?> getPostsById(int id) async {
    for (int i = 0; i < _postsHiveBox.length; i++) {
      PostsHiveType element = await _postsHiveBox.getAt(i);
      if (element.id == id) {
        return PostsDto()
          ..id = element.id
          ..userId = element.userId
          ..body = element.body
          ..title = element.title;
      }
    }
    return null;
  }

  @override
  int countPosts() {
    return _postsHiveBox.length;
  }

  @override
  Future<void> addAlbum(List<AlbumDto> albums) async {
    for (var album in albums) {
      if (album.photos != null) {
        var hiveAlbum = AlbumHiveType()
          ..id = album.id
          ..userId = album.userId
          ..title = album.title
          ..photos = [];

        for (var element in album.photos!) {
          hiveAlbum.photos!.add(PhotoHiveType()
            ..albumId = element.albumId
            ..id = element.id
            ..title = element.title
            ..url = element.url
            ..thumbnailUrl = element.thumbnailUrl);
        }

        await _albumsHiveBox.add(hiveAlbum);
      }
    }
  }

  @override
  Future<int> countAlbumsByUserId(int userId) async {
    int k = 0;
    for (int i = 0; i < _albumsHiveBox.length; i++) {
      AlbumHiveType element = await _albumsHiveBox.getAt(i);
      if (element.userId == userId) k++;
    }
    return k;
  }

  @override
  Future<List<AlbumDto>> getAlbumsByUserId(int userId) async {
    List<AlbumDto> albums = [];
    for (int i = 0; i < _albumsHiveBox.length; i++) {
      AlbumHiveType element = await _albumsHiveBox.getAt(i);
      if (element.userId != userId) continue;
      List<PhotosDto> photos = [];
      element.photos?.forEach((element) {
        photos.add(PhotosDto()
          ..albumId = element.albumId
          ..id = element.id
          ..title = element.title
          ..url = element.url
          ..thumbnailUrl = element.thumbnailUrl);
      });

      var album = AlbumDto()
        ..id = element.id
        ..userId = element.userId
        ..title = element.title
        ..photos = photos;

      albums.add(album);
    }
    return albums;
  }

  @override
  Future<void> addComments(List<CommentDto> comments) async {
    for (var comment in comments) {
      var hiveComment = CommentHiveType()
        ..id = comment.id
        ..postId = comment.postId
        ..name = comment.name
        ..email = comment.email
        ..body = comment.body;

      await _commentsHiveBox.add(hiveComment);
    }
  }

  @override
  Future<List<CommentDto>> getCommentsByPostId(int postId) async {
    List<CommentDto> comments = [];
    for (int i = 0; i < _commentsHiveBox.length; i++) {
      CommentHiveType element = await _commentsHiveBox.getAt(i);
      if (element.postId != postId) continue;
      comments.add(CommentDto()
        ..id = element.id
        ..postId = element.postId
        ..email = element.email
        ..body = element.body
        ..name = element.name);
    }
    return comments;
  }

  @override
  Future<void> addComment(CommentDto comment) async {
    var hiveComment = CommentHiveType()
      ..id = comment.id
      ..postId = comment.postId
      ..email = comment.email
      ..body = comment.body
      ..name = comment.name;

    await _commentsHiveBox.add(hiveComment);
  }
}
