import 'package:flutter/material.dart';
import 'package:popcorn_projects/screens/login_page.dart';
import 'package:provider/provider.dart';
import 'models/cart.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => Cart()),
          ],
      child:  const MyApp(),
  ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}