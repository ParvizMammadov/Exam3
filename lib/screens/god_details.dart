import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';

class GodOfWar extends StatelessWidget {
  const GodOfWar({super.key});

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
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  height: 100,
                  width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Ionicons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Details',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/GoW.webp'),
                )),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'God Of War',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'April 20, 2018, by 	Sony Interactive Entertainment, 5',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '  Following the death of Kratoss second wife and Atreuss mother, Faye, the two embark on a journey to fulfill her request that her ashes be spread at the highest peak of the nine realms. Kratos keeps his troubled past a secret from Atreus, who is unaware of his divine nature.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'RPG',
                      style: TextStyle(
                        backgroundColor: Colors.grey,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Adventure',
                      style: TextStyle(
                        backgroundColor: Colors.grey,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Openworld',
                      style: TextStyle(
                        backgroundColor: Colors.grey,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
