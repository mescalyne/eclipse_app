import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
class FiveEvent with _$FiveEvent {
  const factory FiveEvent.onLoad() = OnLoad;
  const factory FiveEvent.onLoadComments() = OnLoadComments;
  const factory FiveEvent.onAddComment(
      String name, String email, String comment) = OnAddComment;
}
