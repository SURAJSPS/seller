import 'package:flutter/material.dart';

class StoreQRCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Get your QR Code'),
        ),
        body: Card(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          child: Container(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.horizontal()),
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
