import 'package:flutter/material.dart';

class CategoryBooks extends StatelessWidget {
  /* final String id;
  final String title;
  final Color color; */
  const CategoryBooks({
    Key? key,
    /* required this.id,
    required this.title,
    required this.color, */
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final catId = routeArguments['id'];
    final catTitle = routeArguments['title'];
    final catColor = routeArguments['color'];
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle!),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(15),
          height: 300,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              width: 5,
              color: Colors.grey,
            ),
          ),
          child: Text(
            '$catTitle Books',
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
