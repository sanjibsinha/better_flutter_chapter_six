import 'package:flutter/material.dart';

class NewColumnWidget extends StatelessWidget {
  const NewColumnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          // A fixed-height child.
          height: 220.0,
          alignment: Alignment.center,
          child: Image.network(
            "https://sanjibsinha.com/wp-content/uploads/2021/04/data-type-php.jpg",
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          // A fixed-height child.
          height: 220.0,
          alignment: Alignment.center,
          child: Image.network(
            "https://sanjibsinha.com/wp-content/uploads/2021/04/data-type-php.jpg",
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          // A fixed-height child.
          height: 220.0,
          alignment: Alignment.center,
          child: Image.network(
            "https://sanjibsinha.com/wp-content/uploads/2021/04/data-type-php.jpg",
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          // A fixed-height child.
          height: 220.0,
          alignment: Alignment.center,
          child: Image.network(
            "https://sanjibsinha.com/wp-content/uploads/2021/04/data-type-php.jpg",
          ),
        ),
      ],
    );
  }
}
