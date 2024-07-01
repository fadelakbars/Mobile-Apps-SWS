import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String routeName = "/home";

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 80,
                padding: EdgeInsets.only(top: 20),
                color: Color.fromARGB(255, 212, 33, 243),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 40,
                        )),
                    const Text(
                      'Smart Water System',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromRGBO(30, 30, 30, 1),
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Make your transactions easier \nwith our SWS",
                          style: TextStyle(
                            color: Color.fromRGBO(30, 30, 30, 1),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
