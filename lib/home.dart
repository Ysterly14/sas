import 'package:flutter/material.dart';
import 'login.dart';


class Home extends StatelessWidget {
  const Home({super.key});// Constructeur

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/SASlogo.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
                bottom: 130, // Ajustez la position du bouton selon vos besoins
                left: 150,   // Ajustez la position du bouton selon vos besoins
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF0E600),
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()), // Créez une instance de Page2
                    );
                    // Code à exécuter lorsque le bouton est cliqué
                  },
                  child: const Text('Commencez'),
                )
            ),
          ],
        ),
      ),
    );
  }
}
