import 'package:flutter/material.dart';
import 'package:new1/tabs/basket/util/basket_util.dart';

class PoUpUpMenuButton extends StatefulWidget {
  @override
  _PoUpUpMenuButtonState createState() => _PoUpUpMenuButtonState();
}

class _PoUpUpMenuButtonState extends State<PoUpUpMenuButton> {
  List<String> listOfPoUpUpMenuButton = ["All", "Pending","Accepted","Rejected","Shipped","Cancelled","Delivered","Failed"];
  @override
  Widget build(BuildContext context) {
    return Container(child: PopupMenuButton(
      onSelected: (value) {
        setState(() {
          BasketUtil.value= value;
        });
        print((BasketUtil.value));
      },
      padding: EdgeInsets.all(10),
      itemBuilder: (BuildContext context) {
        return listOfPoUpUpMenuButton.map((link) {
          return PopupMenuItem(textStyle: TextStyle(),
            height: 35,
            value: link,
            child: Text(link),
          );
        }).toList();
      },
    ),);
  }
}
