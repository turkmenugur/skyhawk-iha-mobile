class LoginModel {
  int? id;
  String? userCode;

  LoginModel({
    this.id,
    this.userCode,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      id: json['id'],
      userCode: json['kod']
    );
  }
}
