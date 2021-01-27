import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Card(
            color: Colors.white,
            child: Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text('Aara Computer 4 Gb'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('1 piece'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(' ₹ 100  '),
                        Text('₹ 100',style: TextStyle(decoration: TextDecoration.lineThrough),),
                      ],
                    ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('In stock',style: TextStyle(color: Colors.green),),

                      Container(height: 10,color: Colors.blue,),
                  ],),

                ],
              ),
              height: 140,
            ),
          ),
        ],
      ),
    );
  }
}
