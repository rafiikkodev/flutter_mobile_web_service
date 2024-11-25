class UserModel {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory UserModel.fromJson({required Map<String, dynamic> json}) => UserModel(
        id: json['id'] ?? 0,
        email: json['email'] ?? "-",
        firstName: json['first_name'] ?? "-",
        lastName: json['last_name'] ?? "-",
        avatar: json['avatar'] ?? "-",
      );
}
