import 'dart:async';
import 'dart:math';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/entities/posts.dart';
import 'package:project/domain/usecase/posts.dart';
import 'package:project/presentation/pages/five/bloc/event.dart';
import 'package:project/presentation/pages/five/bloc/state.dart';
import 'package:project/resources/logger.dart';

typedef FiveEventHandler = Stream<FiveState>;

@Injectable()
class FiveBloc extends Bloc<FiveEvent, FiveState> {
  int? postId;

  final GetPostsByIdUseCase _getPostsByIdUseCase;
  final GetCommentsByPostIdUseCase _getCommentsByPostIdUseCase;
  final AddCommetUseCase _addCommetUseCase;

  FiveBloc(
    @factoryParam this.postId,
    this._getPostsByIdUseCase,
    this._getCommentsByPostIdUseCase,
    this._addCommetUseCase,
  ) : super(FiveState(screenStatus: ScreenStatus.loading)) {
    add(OnLoad());
    add(OnLoadComments());
  }

  @override
  FiveEventHandler mapEventToState(FiveEvent event) => event.when(
        onLoad: _onLoad,
        onLoadComments: _onLoadComments,
        onAddComment: _onAddComment,
      );

  FiveEventHandler _onLoad() async* {
    try {
      var result = await _getPostsByIdUseCase(postId!);
      if (result != null) {
        yield state.copyWith(
          screenStatus: ScreenStatus.screen,
          posts: result,
        );
      }
    } catch (ex) {
      Log.error('FiveBloc - _onLoad error: ${ex.toString()}');
    }
  }

  FiveEventHandler _onLoadComments() async* {
    try {
      var result = await _getCommentsByPostIdUseCase(postId!);
      if (result != null) {
        yield state.copyWith(
          comments: result,
        );
        _isLoadedComments.add(true);
      }
    } catch (ex) {
      Log.error('FiveBloc - _onLoadComments error: ${ex.toString()}');
    }
  }

  FiveEventHandler _onAddComment(
      String email, String name, String comment) async* {
    _isLoadedComments.add(false);

    Random random = Random();
    int randomNumber = random.nextInt(1000000) + 10000;
    var result = await _addCommetUseCase(CommentDto()
      ..id = randomNumber
      ..postId = postId
      ..body = comment
      ..email = email
      ..name = name);

    if (result != null) {
      yield state.copyWith(
        comments: result,
      );
      _isLoadedComments.add(true);
    }
  }

  final StreamController<bool> _isLoadedComments = StreamController<bool>();
  Stream<bool> get isLoadedComments => _isLoadedComments.stream;
}
