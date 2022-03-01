import 'package:project/domain/entities/user.dart';

class FirstState {
  List<UserDto>? userDto;
  ScreenStatus screenStatus;

  FirstState({
    this.userDto,
    required this.screenStatus,
  });

  FirstState copyWith({
    List<UserDto>? userDto,
    ScreenStatus? screenStatus,
  }) =>
      FirstState(
        userDto: userDto ?? this.userDto,
        screenStatus: screenStatus ?? this.screenStatus,
      );
}

enum ScreenStatus { loading, error, screen }
