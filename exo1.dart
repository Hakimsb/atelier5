void main() {
  try {
    var resultat = 12 ~/ 0; // Division par zéro
    print("Résultat : $resultat");
  } catch (e) {
    print("Division impossible : $e");
  }
}
