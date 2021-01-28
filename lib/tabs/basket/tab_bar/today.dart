import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'last_month.dart';

class Today extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(padding: EdgeInsets.all(0),
        children: [
          LastMonth(),
          LastMonth(),
          LastMonth(),
          LastMonth(),
          LastMonth(),
          LastMonth(),
          LastMonth(),
        ],
      ),
    );
  }
}
