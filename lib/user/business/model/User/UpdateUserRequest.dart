import 'dart:convert' ;

String updateUserRequestToJson(UpdateUserRequest data) => json.encode(data.toJson());

class UpdateUserRequest {
  String email;
  String poste;

  UpdateUserRequest({
    required this.email,
    required this.poste,
});

  Map<String, dynamic> toJson() => {
    "email": email,
    "poste":poste,
  };
}