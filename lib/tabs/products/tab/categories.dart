import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool switchOn = false;

  void changeSwitchState(bool state) {
    setState(() {
      switchOn = !switchOn;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        children: [
          Card(
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 100,
                        child: Card(
                          child: Image.network(
                            'https://placeimg.com/640/480/any',
                            height: 100,
                            width: 80,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(width: 1,color: Colors.grey)
                          ),
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Computer',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.list)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('1 Product listed'),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'In stock',
                                style: TextStyle(color: Colors.green),
                              ),
                              Switch(
                                value: switchOn,
                                activeColor: Colors.red[600],
                                activeTrackColor: Colors.red[200],
                                inactiveThumbColor: Colors.blue[200],
                                inactiveTrackColor: Colors.blue[100],
                                onChanged: changeSwitchState,
                              ),
                            ],
                          )
                        ],
                      ),)
                    ],
                  ),
                  Divider(height: 15,color: Colors.grey,thickness: 1,),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.share_sharp,
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Share Category'),
                    ],

                  ),
                  SizedBox(height: 5,),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoButton(
              child: Text(
                'Add new product',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},color: Colors.deepOrange,
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
