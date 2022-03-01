import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
class ThirdEvent with _$ThirdEvent {
  const factory ThirdEvent.onLoad() = OnLoad;
  const factory ThirdEvent.onRouteToFive(int id) = OnRouteToFive;

}

