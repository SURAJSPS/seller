import 'package:flutter/material.dart';
import 'bottom_pages/account_page.dart';
import 'bottom_pages/home_page.dart';
import 'bottom_pages/marketing_page.dart';
import 'bottom_pages/order_page.dart';
import 'bottom_pages/products_page.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _slectedItem=0;
  String productInputText;
  var _bottom_pages = [BottomHomePage(),BottomOrderPage(),BottomProductsPage(),BottomMarketingPage(),BottomAccountPage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: _bottom_pages[_slectedItem],),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart),
                title: Text('Order'),
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.widgets_outlined),
                title: Text('Products'),
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_to_photos_outlined),
                title: Text('Marketing'),
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                title: Text('Account'),
                backgroundColor: Colors.blue
            ),
          ],currentIndex: _slectedItem,onTap: (index){
            setState(() {
              _slectedItem=index;
            });
        },
        ),
      ),
    );
  }
}
