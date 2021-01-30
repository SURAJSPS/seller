import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddVariants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Variants'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ExpansionTile(
                title: Text(
                  'Size',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                childrenPadding: EdgeInsets.all(15),
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Size 1',
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Size 1',
                            ),
                          ),
                        ),
                        new SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Size 1',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
                initiallyExpanded: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
