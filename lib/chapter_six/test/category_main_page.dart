import 'package:flutter/material.dart';

class CategoryMainPage extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryMainPage({
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
        backgroundColor: color,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          margin: const EdgeInsets.all(
            10.0,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.2),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border.all(
              width: 10,
              color: Colors.black,
            ),
          ),
          child: Text(
            '$title Books',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
