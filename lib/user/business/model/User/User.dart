import 'dart:convert';

User userFronJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  int id;
  String name;
  String poste;
  String email;

  User({
    this.id=-1,
    this.name="",
    this.poste="",
    this.email="",

});

  Map<String, dynamic> toJson()=> {
    "id":id,
    "name": name,
    "poste": poste,
    "email": email,
  }
}