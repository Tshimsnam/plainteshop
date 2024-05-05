class CreateUserRequest{
  String name;
  String poste;
  String email;
  String password;
  String confirmPassword;

  CreateUserRequest({
    required this.name,
    this.poste="",
    this.email="",
    required this.password,
    required this.confirmPassword,
});

  Map<String, dynamic> toJson() => {
    "name": name,
    "email":poste,
    "phone":email,
    "password": password,
    "confirmPassword": confirmPassword
  };
}