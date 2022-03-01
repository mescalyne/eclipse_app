import 'package:project/data/models/user.dart';
import 'package:project/domain/entities/user.dart';

extension UserAdapter on UserNetworkDto {
  UserDto get toDomain {
    return UserDto(
      id:id,
      name: name,
      username: username,
      email: email,
      phone: phone,
      website: website,
      companyBs: companyBs,
      companyName: companyName,
      companyPhrase: companyPhrase,
      addressCity: addressCity,
    );
  }
}