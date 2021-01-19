import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edit_business_detials_page.dart';

class BottomAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Account',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            Card(
              color: Colors.white,
              margin: EdgeInsets.all(14),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.blueAccent,size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Support',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white70.withOpacity(.5),
                      borderRadius: BorderRadius.circular(7.1),border: Border.all(width: .5,)
                    ),
                    child: SizedBox(
                      width: 75,
                      height: 75,
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dukan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: GestureDetector(child: Text(
                              'Edit business details',
                              style: TextStyle(color: Colors.blueAccent),
                              textWidthBasis: TextWidthBasis.longestLine,
                            ),onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>EditBusinessDetails()),);
                            },
                          ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 0,
              thickness: 1,
              indent: 16,
              endIndent: 17,
              color: Colors.grey,
            ),
            ListTile(
              title: Text('Store Management'),
              onTap: () {},
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              leading: Icon(Icons.home_repair_service_rounded),
            ),
            ListTile(
              title: Text('Additional information'),
              onTap: () {},
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              leading: Icon(Icons.info_outline),
            ),
            ListTile(
              title: Text('How to use Dukan App'),
              onTap: () {},
              leading: Icon(Icons.video_collection_outlined),
            ),
            Expanded(
              child: new Container(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.1),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text('OUR PROMISE'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 0),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Container(padding: EdgeInsets.symmetric(horizontal: 3),
                                    child: SizedBox(
                                      child: Container(
                                        color: Colors.blue.withOpacity(.2),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.all(4.0),
                                          child: Icon(
                                            Icons
                                                .assignment_turned_in_outlined,size: 20,
                                            color: Colors.blueAccent,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '100% Safe & Free',
                                    ),
                                  ),
                                ],
                              ),

                              Container(padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Row(
                                  children: [
                                    Container(
                                      color: Colors.deepOrangeAccent.withOpacity(.2),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.all(4.0),
                                        child: Icon(
                                          Icons.backup_sharp,size: 20,
                                          color:
                                              Colors.deepOrangeAccent,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.all(8.0),
                                      child: Text('Auto Data Backup'),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
