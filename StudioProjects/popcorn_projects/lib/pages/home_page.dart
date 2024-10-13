import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import '../screens/login_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  //this selected index is to control the bottom nav bar

  int _selectedIndex = 0;

  // this method will update our selected index
  //when the user taps on the bottom bar

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    // shop page
     const ShopPage(),

    // cart page
    const CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder:  (context) => IconButton(
            icon: const Padding(
              padding:  EdgeInsets.only(left: 12.0),
              child:  Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          onPressed: () {
              Scaffold.of(context).openDrawer();
          },
        ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.red[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                  child: Image.asset(
                      'lib/images/9c891b1d-ded8-430a-b434-1b0eb47673d7.jpg'
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.red[900],
                  ),
                ),
                //other pages
                const  Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {

                  Navigator.of(context).pop();


                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}