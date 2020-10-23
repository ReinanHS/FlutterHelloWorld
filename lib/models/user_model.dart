import 'package:helloWorld/models/address_model.dart';

class UserModel {
  int id;
  String name, email, username, phone;
  AddressModel address;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
    this.phone,
    this.address,
  });

  String getAvatar() {
    return 'https://github.com/' + this.username + '.png?size=200';
  }

  String getAvatarAPI() {
    return 'https://avatars.dicebear.com/api/male/' + this.name + '.svg';
  }

  factory UserModel.fromJson(Map<String, Object> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      username: json['username'],
      phone: json['phone'],
      address: AddressModel(),
    );
  }

  Map toJson() {
    return {
      'id': this.id,
      'name': this.name,
      'email': this.email,
      'username': this.username,
      'phone': this.phone,
    };
  }
}
