import 'dart:convert';

List<Users> usersFromJson(String str) =>
    List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

class Users {
  int? id;
  String? username;
  String? email;
  String? password;
  String? userFirstName;
  String? userLastName;
  List<String>? roles;

  Users(
      {this.id,
      this.username,
      this.email,
      this.password,
      this.userFirstName,
      this.userLastName,
      this.roles});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    userFirstName = json['userFirstName'];
    userLastName = json['userLastName'];
    roles = json['roles'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['userFirstName'] = this.userFirstName;
    data['userLastName'] = this.userLastName;
    data['roles'] = this.roles;
    return data;
  }
}
