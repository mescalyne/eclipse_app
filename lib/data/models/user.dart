class UserNetworkDto {
  int? id;
  String? name;
  String? username;
  String? email;
  String? phone;
  String? website;
  String? companyName;
  String? companyBs;
  String? companyPhrase;
  String? addressCity;

  UserNetworkDto({
    this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website,
    this.addressCity,
    this.companyBs,
    this.companyName,
    this.companyPhrase,
  });

  UserNetworkDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    website = json['website'];
    addressCity = json['address']['zipcode'];
    companyBs = json['company']['name'];
    companyName = json['company']['bs'];
    companyPhrase = json['company']['catchPhrase'];
  }
}
