import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:flutter_application_3_demo/screens/god_details.dart';
import 'package:flutter_application_3_demo/screens/last_of_us.dart';
import 'package:flutter_application_3_demo/screens/second_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_3_demo/screens/rdr_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: SweepGradient(colors: [
        Color(0xFF51acff),
        Color(0xFF000000),
        Color(0xFF181818)
      ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60, left: 80),
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Text(
                      'Welcome to Gamecom',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white, fontSize: 20),
                    ),
                    const Icon(
                      Ionicons.game_controller_outline,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const RdrDetails();
                        }));
                      },
                      child: Container(
                        height: 400,
                        width: 300,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/rdr_2.webp'),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const GodOfWar();
                        }));
                      },
                      child: Container(
                        height: 400,
                        width: 300,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/GoW.webp'),
                        )),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const TheLastOfUs();
                        }));
                      },
                      child: Container(
                        height: 400,
                        width: 300,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/last.jpg'),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                'Begin your Gaming Oddysey',
                style: GoogleFonts.actor(
                  color: Colors.white,
                  fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 50,
                  width: 250,
                  child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SecondScreen();
                        }));
                      },
                      child: const Text(
                        'Lets go!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ))),
              const SizedBox(
                height: 60,
              ),
              const Text(
                textAlign: TextAlign.center,
                'By continuing  you accept \n our Terms  of Service ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                ),
              )
            ],
          )),
    );
  }
}
