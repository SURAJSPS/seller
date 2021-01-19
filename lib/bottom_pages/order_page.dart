import 'package:flutter/material.dart';

class BottomOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Order'),
          centerTitle: true,
          actions: [
            Icon(Icons.info_outline)
          ],
        ),
      ),
    );
  }
}
