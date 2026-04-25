import 'package:flutter/material.dart';
import 'package:my_app/components/bottom_nav_bar.dart';
import 'package:my_app/pages/cart_page.dart';
import 'package:my_app/pages/profile_page.dart';
import 'package:my_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex= 0;
  navigateBottomBar(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> Pages = [
    const ShopPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        selectedIndex: selectedIndex,
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Builder(
            builder: (context)=>IconButton(
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
            ),
        ),
      ),
      body: Pages[selectedIndex],
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Divider(
                color: Colors.grey[900],
              ),
            ),
            Image.asset(
              'lib/images/nike-logo.png',
              width: 160,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Divider(
                color: Colors.grey[900],
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                  navigateBottomBar(0);
                },
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                  navigateBottomBar(1);
                },
                leading: Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "Cart",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: (){
                  Navigator.pop(context);
                  navigateBottomBar(2);
                },
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  "profile",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
