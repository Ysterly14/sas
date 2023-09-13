
import 'package:flutter/material.dart';
import 'package:sas/security.dart'; // Assurez-vous que le chemin est correct

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252525),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Retour à la page précédente
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xFFF0E600),
                  padding: const EdgeInsets.only(left: 10 ), // Ajustez la valeur selon vos besoins
                ),
                child: const Icon(
                  Icons.arrow_back_rounded,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      // Ajoutez ici la logique pour "Comptes"
                    },
                    leading: const Icon(Icons.account_circle, color: Color(0xFFF0E600)),
                    title: const Text('Comptes', style: TextStyle(color: Colors.white),)
                  ),
                  const Divider(
                    color: Color(0xFFF0E600),
                    thickness: 3,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ChangePasswordPage()), // Naviguer vers la page de changement de mot de passe
                      );
                    },
                    leading: const Icon(Icons.lock, color: Color(0xFFF0E600)), // Icône pour changer le mot de passe
                    title: const Text('Changer le mot de passe', style: TextStyle(color: Colors.white),),
                  ),
                  const Divider(
                    thickness: 3,
                    color: Color(0xFFF0E600),
                  ),
                  ListTile(
                    onTap: () {
                      // Ajoutez ici la logique pour "Sécurité"
                    },
                    leading: const Icon(Icons.security, color: Color(0xFFF0E600)),
                    title: const Text('Sécurité', style: TextStyle(color: Colors.white),),
                  ),
                  const Divider(
                    thickness: 3,
                    color: Color(0xFFF0E600),
                  ),
                  ListTile(
                    onTap: () {
                      // Ajoutez ici la logique pour "Aide"
                    },
                    leading: const Icon(Icons.help, color: Color(0xFFF0E600)),
                    title: const Text('Aide', style: TextStyle(color: Colors.white),),
                  ),
                  const Divider(
                    color: Color(0xFFF0E600),
                    thickness: 3,
                  ),
                  ListTile(
                    onTap: () {
                      // Ajoutez ici la logique pour "Langue"
                    },
                    leading: const Icon(Icons.language, color: Color(0xFFF0E600)),
                    title: const Text('Langue', style: TextStyle(color: Colors.white),),
                  ),
                  const Divider(
                    color: Color(0xFFF0E600),
                    thickness: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

