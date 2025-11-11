import 'dart:io';

void main() {
  try {
    stdout.write("Entrez votre âge : ");
    String? saisie = stdin.readLineSync();
    int age = int.parse(saisie!);
    print("Votre âge est : $age ans");
  } on FormatException catch (e) {
    print("Erreur : format invalide (${e.message})");
  }
}
