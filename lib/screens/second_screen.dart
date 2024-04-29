import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3_demo/screens/details.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: SweepGradient(colors: [
          Color(0xFF51acff),
          Color(0xFF000000),
          Color(0xFF181818)
        ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 70, left: 30),
                          height: 100,
                          child: const Text(
                            'GAMECOM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30, left: 90),
                          height: 50,
                          width: 20,
                          child: const Icon(
                            Icons.notification_add_sharp,
                            color: Colors.white,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(7),
                      height: 250,
                      width: 300,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ps_5_blade.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Up on your wish list ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    const Text(
                      'Stellar Blade ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const Text(
                      '2024 * shift up * 4.5  ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Latest review',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 120),
                          child: Text(
                            'See all',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_right_alt_rounded)
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                alignment: Alignment.bottomLeft,
                                margin: const EdgeInsets.only(left: 20),
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/final_fantasy.webp'),
                                        fit: BoxFit.fill)),
                              ),
                              const Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 80),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      'Final Fantasy XIV \n online ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '2021 * 4.5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                alignment: Alignment.bottomLeft,
                                margin: const EdgeInsets.only(left: 20),
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/final_fantasy.webp'),
                                        fit: BoxFit.fill)),
                              ),
                              const Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 80),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      'Final Fantasy XIV \n online ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '2021 * 4.5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  width: 100,
                  alignment: Alignment.topCenter,
                  child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Details();
                        }));
                      },
                      child: const Text(
                        'Go to details',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
