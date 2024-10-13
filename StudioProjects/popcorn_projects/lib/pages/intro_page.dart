import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
            'lib/images/9c891b1d-ded8-430a-b434-1b0eb47673d7.jpg',
            height: 300,
            ),
          ),
          
          const SizedBox(height: 48),

          //title
          const Text(
            'WELCOME TO POPCORN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),
          ),
          const SizedBox(height: 24),

          //sub title
          const Text(
            'UNLOCK INSTANT SURPRISES WITH POP NOW',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          
          //start now button
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
            ),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red[900],
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(25.0),
            child:const Center(
              child: Text(
              'POP NOW',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                    ),
                  ),
                )
              )
            )
            ],
          ),
        ),
      ),
    ),
    );
  }
}