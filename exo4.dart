// 🔹 Étape 1 : Créer une exception personnalisée
class MotdepasseCourtException implements Exception {
  final String message;

  MotdepasseCourtException([this.message = "Le mot de passe est trop court !"]);

  @override
  String toString() => "Erreur : $message";
}

void verifierMotdepasse(String motdepasse) {
  if (motdepasse.length < 6) {
    throw MotdepasseCourtException("Le mot de passe doit contenir au moins 6 caractères.");
  } else {
    print("Mot de passe accepté ");
  }
}

void main() {
  try {
    verifierMotdepasse("abc"); 
  } on MotdepasseCourtException catch (e) {
    print(e);
  } finally {
    print("Vérification terminée.");
  }
}
