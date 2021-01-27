import 'package:flutter/material.dart';
import 'tab/categories.dart';
import 'tab/products.dart';

class BottomProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [
            Icon(Icons.search)
          ],
          bottom: TabBar(
            tabs: [
              Text('Products'),
              Text('Categories'),

            ],
          ),
          title: Text('Catalogue'),
        ),
        body: TabBarView(
          children: [
            Product(),
            Categories(),

          ],
        ),
      ),
    );
  }
}
