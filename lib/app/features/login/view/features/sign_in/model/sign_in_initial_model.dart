import 'package:equatable/equatable.dart';

class SignInInitialModel with EquatableMixin {
  SignInInitialModel({
    this.isRememberMe = false,
    this.isShowPassword = false,
  });

  final bool isRememberMe;
  final bool isShowPassword;

  @override
  List<Object?> get props => [
        isRememberMe,
        isShowPassword,
      ];

  SignInInitialModel copyWith({
    bool? isRememberMe,
    bool? isShowPassword,
  }) =>
      SignInInitialModel(
        isRememberMe: isRememberMe ?? this.isRememberMe,
        isShowPassword: isShowPassword ?? this.isShowPassword,
      );
}
