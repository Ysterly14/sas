import 'package:flutter/material.dart';
import 'package:sas/adminsettingsview.dart';
import 'package:sas/home.dart';


class Login extends StatelessWidget {
  const Login({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252525),
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Positioned(
            top: 20,
            left: 20,
            child: SizedBox(
              width: 60,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()), // Créez une instance de Page2
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(), backgroundColor: const Color(0xFFF0E600),
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
                    'Pseudo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 200,
                  height:30,
                  child: TextField(
                    decoration: InputDecoration(
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
                    'Mot de passe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                const SizedBox(height: 75),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AdminSettings()), // Créez une instance de Page2
                        );
                        // Ajoutez ici la logique de connexion
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(), backgroundColor:const Color(0xFFF0E600),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 35,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
