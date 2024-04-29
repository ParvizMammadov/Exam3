import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';

class RdrDetails extends StatelessWidget {
  const RdrDetails({super.key});

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
                  image: AssetImage('assets/images/rdr_2.webp'),
                )),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Red Dead Redemption 2',
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
                'October 26, 2018, by RockStar, 5',
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
                  '1899 a gang of outlaws led by Dutch Van Der Linde fail a robbery and now need to fight against the law and travel across the wild country of America and when problems threaten to tear the gang apart, lead enforcer Arthur Morgan must choose between his ideals or the man who raised him.',
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
