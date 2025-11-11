import 'dart:io';

class NombreNegatifException implements Exception {
  @override
  String toString() => "Erreur : le nombre ne peut pas être négatif.";
}

void main() {
  try {
    stdout.write("Entrez un nombre : ");
    String? saisie = stdin.readLineSync();
    double nombre = double.parse(saisie!);

    if (nombre < 0) {
      throw NombreNegatifException();
    }

    print("Le carré de $nombre est ${nombre * nombre}");
  } on FormatException {
    print("Erreur : entrée invalide !");
  } on NombreNegatifException catch (e) {
    print(e);
  } finally {
    print("Fin du programme.");
  }
}
