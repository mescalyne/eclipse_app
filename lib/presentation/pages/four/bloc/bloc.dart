import 'dart:async';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:project/domain/usecase/albums.dart';
import 'package:project/presentation/pages/four/bloc/event.dart';
import 'package:project/presentation/pages/four/bloc/state.dart';
import 'package:project/resources/logger.dart';

typedef FourEventHandler = Stream<FourState>;

@Injectable()
class FourBloc extends Bloc<FourEvent, FourState> {
  int? userId;
  final GetAlbumsByUserIdUseCase _albumsByUserIdUseCase;

  FourBloc(
    @factoryParam this.userId,
    this._albumsByUserIdUseCase,
  ) : super(FourState(screenStatus: ScreenStatus.loading)) {
    add(OnLoad());
  }

  @override
  FourEventHandler mapEventToState(FourEvent event) => event.when(
        onLoad: _onLoad,
      );

  FourEventHandler _onLoad() async* {
    try {
      final albums = await _albumsByUserIdUseCase(userId!);
      yield state.copyWith(screenStatus: ScreenStatus.screen, albums: albums);
    } catch (ex) {
      Log.error('FourBloc - _onLoad error: ${ex.toString()}');
    }
  }
}
