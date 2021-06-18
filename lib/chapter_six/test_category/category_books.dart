import 'package:flutter/material.dart';

class CategoryBooks extends StatelessWidget {
  const CategoryBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorywise Books Page'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(15),
          height: 300,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.purple,
            border: Border.all(
              width: 5,
              color: Colors.grey,
            ),
          ),
          child: Text(
            'Categorywise Books Page',
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
