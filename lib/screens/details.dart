import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Details extends StatelessWidget {
  const Details({super.key});

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
                          Icons.arrow_back,
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
                  image: AssetImage('assets/images/final_fantasy.webp'),
                )),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Final Fantasy XIV',
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
                'August 27, 2013, by Square Enix, 4.5',
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
                  'Set in the fantastical realm of Eorzea, Final Fantasy XIV is a sprawling online adventure where thousands of players set out to conquer a vast world teeming with fierce monsters, powerful magic, and alluring myths.',
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
