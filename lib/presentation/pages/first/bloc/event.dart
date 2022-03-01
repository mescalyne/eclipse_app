import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project/domain/entities/user.dart';
part 'event.freezed.dart';

@freezed
class FirstEvent with _$FirstEvent {
  const factory FirstEvent.onLoad() = OnLoad;
  const factory FirstEvent.onRouteToSecond(UserDto user) = OnRouteToSecond;
}
