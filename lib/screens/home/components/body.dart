import 'package:flutter/material.dart';
import 'package:food_app/components/search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
      ],
    );
  }
}
