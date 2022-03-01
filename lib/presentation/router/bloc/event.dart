import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project/domain/entities/user.dart';

part 'event.freezed.dart';

@freezed
class RouterEvent with _$RouterEvent {
  const factory RouterEvent.pop() = OnPop;
  const factory RouterEvent.toFirst() = ToFirst;
  const factory RouterEvent.toSecond(UserDto user) = ToSecond;
  const factory RouterEvent.toThird(int userId) = ToThird;
  const factory RouterEvent.toFour(int userId) = ToFour;
  const factory RouterEvent.toFive(int userId) = ToFive;

}
