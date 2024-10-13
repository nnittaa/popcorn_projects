import 'package:flutter/material.dart';
import 'package:popcorn_projects/components/my_button_dart.dart';
import 'package:popcorn_projects/components/my_textfield.dart';
import 'package:popcorn_projects/components/square_title.dart';
import '../pages/intro_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // validate email
  bool validateEmail(String email) {
    final emailRegExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(email);
  }

  // validate password
  bool validatePassword(String password) {
    return password.length >= 6;
  }

  // sign user in method
  void signUserIn(BuildContext context) {
    String email = usernameController.text;
    String password = passwordController.text;

    if (validateEmail(email) && validatePassword(password)) {
      // Login successful
      print('Login successful');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => IntroPage(),
        ),
      );
    } else {
      // Invalid email or password
      print('Invalid email or password');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid email or password'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                // logo
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/9c891b1d-ded8-430a-b434-1b0eb47673d7.jpg',
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(height: 50),

                Text(
                  'Welcome back you\'ve been missed',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(height: 25),

                // username textfield
                MyTextfield(
                  controller: usernameController,
                  hintText: 'Username',
                  obscreText: false,
                ),
                const SizedBox(height: 5),

                // password textfield
                MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscreText: true,
                ),
                const SizedBox(height: 5),


                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forget Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),

                // sign in button
                MyButton(
                  onTap: () {
                    signUserIn(context); // เรียกใช้ signUserIn ที่นี่
                  },
                ),
                const SizedBox(height: 30),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                // google + play store sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // google button
                    SquareTitle(imagePath: 'lib/images/9eac9d79-fce0-4039-8634-2d32ca3c2f12.jpg'),
                    SizedBox(width: 10),
                    // play store button
                    SquareTitle(imagePath: 'lib/images/87254007-d719-494f-82e5-b83d230ca0db.jpg'),
                  ],
                ),
                const SizedBox(height: 25),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
