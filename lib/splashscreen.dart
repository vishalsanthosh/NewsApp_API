import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/Animation - 1735113379764.json', 
              width: 200,  
              height: 200,
            ),
            SizedBox(height: 20),
           Text(
  'The Daily Bugle',
  style: TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w900,
    color: const Color.fromARGB(255, 204, 83, 228),
    letterSpacing: 1,
    shadows: [
      Shadow(
        blurRadius: 10.0,
        color: const Color.fromARGB(255, 240, 162, 229),
        offset: Offset(1.0, 2.0),
      ),
    ],
  ),
),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/category');
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 204, 83, 228),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 51, 50, 50),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Enter',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
