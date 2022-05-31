import 'package:flutter/material.dart';
import 'package:posttest7_1915026010_muhammadrezky/main_page.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/apex.webp"),
              ),
            ),
            height: 480,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black38,
                    Colors.black,
                  ],
                ),
              ),
              child: const Align(
                child: Text(
                  "Welcome to the Game Store App",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black,
            height: 170,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.off(const MainPage());
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.all(20),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}