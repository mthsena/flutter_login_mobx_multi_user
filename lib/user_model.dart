class UserModel {
  const UserModel({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  factory UserModel.empty() {
    return const UserModel(
      email: '',
      password: '',
    );
  }
}
