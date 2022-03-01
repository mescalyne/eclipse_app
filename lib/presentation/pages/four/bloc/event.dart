import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
class FourEvent with _$FourEvent {
  const factory FourEvent.onLoad() = OnLoad;
}
