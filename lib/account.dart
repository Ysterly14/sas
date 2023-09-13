import 'package:flutter/material.dart';


class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: 60, // Largeur du bouton circulaire
              height: 120, // Hauteur du bouton circulaire
              margin: const EdgeInsets.only(left:5), // Ajustez la position du bouton selon vos besoins
              decoration: const BoxDecoration(
                shape: BoxShape.circle, // Définit la forme comme circulaire
                color: Color(0xFFF0E600), // Couleur du bouton
              ),
              child: InkWell(
                onTap: () {
                  // Code à exécuter lorsque le bouton circulaire est cliqué
                },
                child:  Center(
                  child: Image.asset(
                    'assets/images/wallpaper.jpg', // Couleur de l'icône
                    width: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
