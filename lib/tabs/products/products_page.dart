import 'package:flutter/material.dart';

import 'add_products_page.dart';

class BottomProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Products'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Row(
                children: [
                  FlatButton(
                    child: Row(
                      children: [
                        Icon(Icons.add_sharp,color: Colors.blue,),
                        Text('Add Product',style: TextStyle(color: Colors.blue),),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>AddProducts()),
                      );
                    },
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
