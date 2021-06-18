import 'package:flutter/material.dart';

class TestCategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  const TestCategoryItem({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(
        10.0,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5,
      ),
      decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: 5,
            color: Colors.black26,
          )),
    );
  }
}
