import 'package:flutter/material.dart';

class Drop extends StatefulWidget {
  @override
  _DropState createState() => _DropState();
}

class _DropState extends State<Drop> {
  String _dropDownValue ='Life Time';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: _dropDownValue == null
          ? Text('Dropdown')
          : Text(
        _dropDownValue,
        style: TextStyle(color: Colors.black),
      ),
      isExpanded: false,
      iconSize: 30.0,
      style: TextStyle(color: Colors.black),elevation: 20,
      items: ['Life Time','One', 'Two', 'Three'].map(
            (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
              () {
            _dropDownValue = val;
          },
        );
      },
    );
  }
}
