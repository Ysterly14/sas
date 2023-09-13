import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override

  ChangePasswordPageState createState() => ChangePasswordPageState();
}

class ChangePasswordPageState extends State<ChangePasswordPage> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  String _errorMessage = '';

  void _changePassword() {
    String oldPassword = _oldPasswordController.text;
    String newPassword = _newPasswordController.text;
    String confirmPassword = _confirmPasswordController.text;

    // Vérifiez si les champs sont vides
    if (oldPassword.isEmpty || newPassword.isEmpty || confirmPassword.isEmpty) {
      setState(() {
        _errorMessage = 'Tous les champs sont obligatoires';
      });
      return;
    }

    // Vérifiez si le nouveau mot de passe correspond à la confirmation
    if (newPassword != confirmPassword) {
      setState(() {
        _errorMessage = 'Le nouveau mot de passe et la confirmation ne correspondent pas';
      });
      return;
    }

    // Vous pouvez ajouter ici votre logique pour modifier le mot de passe
    // Si la modification réussit, vous pouvez naviguer vers une autre page ou afficher un message de succès.

    // Effacez les champs après la modification réussie
    _oldPasswordController.clear();
    _newPasswordController.clear();
    _confirmPasswordController.clear();

    setState(() {
      _errorMessage = 'Le mot de passe a été modifié avec succès';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252525),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            left: 20,
            child: SizedBox(
              width: 60,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Retour à la page précédente
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xFFF0E600),
                ),
                child: const Icon(
                  Icons.arrow_back_rounded,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Ancien mot de passe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    obscureText: true,
                    controller: _oldPasswordController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Nouveau mot de passe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    obscureText: true,
                    controller: _newPasswordController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Confirmer le nouveau mot de passe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    obscureText: true,
                    controller: _confirmPasswordController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  _errorMessage,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _changePassword,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF0E600),
                  ),
                  child: const Text('Changer le mot de passe'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



