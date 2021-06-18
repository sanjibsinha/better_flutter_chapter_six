import 'package:flutter/material.dart';

class CategoryBooks extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryBooks({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(15),
          height: 300,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              width: 5,
              color: Colors.grey,
            ),
          ),
          child: Text(
            '$title Books',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
