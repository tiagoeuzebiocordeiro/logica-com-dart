// 1st Exercise: User entity

import 'dart:math';

class User {
  final String
      email; // Final = depois de ser instanciada, ninguem consegue alterar o valor dela
  final String password;

  User({required this.email, required this.password});
}

// 2nd Exercise: IMC Calc

class IMC {
  final double weight;
  final double height;

  IMC({required this.weight, required this.height});

  double calc() {
    return weight / pow(height, 2);
  }
}

void main() {
  print("1st Exercise - User entity:");
  User usr1 = User(email: "mail@mail.com", password: "why_are_u_seeing_this");

  print(usr1.email + ", " + usr1.password);

  print("2nd exercise - IMC:");
  final IMC imc = IMC(weight: 78.5, height: 1.70);
  final result = imc.calc();
  print(result);
}
