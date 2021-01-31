import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AddVariants extends StatefulWidget {
  @override
  _AddVariantsState createState() => _AddVariantsState();
}

class _AddVariantsState extends State<AddVariants> {
  // create some values
  List<Color> currentColors = [Colors.limeAccent, Colors.green];
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Add Variants'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: ExpansionTile(
                collapsedBackgroundColor: Colors.white,
                title: Text(
                  'Size',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                childrenPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
                              labelText: 'MRP',
                            ),
                          ),
                        ),
                        new SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Selling Price',
                                helperStyle: TextStyle(fontSize: 200)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Spacer(),
                        GestureDetector(
                          child: Text(
                            'DELETED',
                            style: TextStyle(color: Colors.red),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 26,
                    width: 170,
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 1)),
                      onPressed: () {},
                      child: Text('Add another size'),
                      splashColor: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
                initiallyExpanded: true,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Card(
              child: ExpansionTile(
                title: Text(
                  'Colors',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                childrenPadding: EdgeInsets.symmetric(horizontal: 10),
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Smalt Blue'),
                      SizedBox(width: 195,),
                      GestureDetector(
                        child: Text(
                          'DELETE',
                          style: TextStyle(color: Colors.red),
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 26,
                    width: 175,
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 1)),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Pick a color!'),
                              content: SingleChildScrollView(
                                child: MultipleChoiceBlockPicker(
                                  pickerColors: currentColors,
                                  onColorsChanged: (val) {
                                    print(val);
                                  },
                                ),
                                // Use Material color picker:
                                //
                                // child: MaterialPicker(
                                //   pickerColor: pickerColor,
                                //   onColorChanged: changeColor,
                                //   showLabel: true, // only on portrait mode
                                // ),
                                //
                                // Use Block color picker:
                                //
                                // child: BlockPicker(
                                //   pickerColor: currentColor,
                                //   onColorChanged: changeColor,
                                // ),
                                //
                                // child: MultipleChoiceBlockPicker(
                                //   pickerColors: currentColors,
                                //   onColorsChanged: changeColors,
                                // ),
                              ),
                              actions: <Widget>[
                                FlatButton(
                                  child: const Text('Got it'),
                                  onPressed: () {
                                    setState(() => currentColor = pickerColor);
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Add another color'),
                      splashColor: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
                initiallyExpanded: true,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Save and continue'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
