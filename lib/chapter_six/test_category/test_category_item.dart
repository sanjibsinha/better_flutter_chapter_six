import 'package:flutter/material.dart';
import '/chapter_six/test_category/category_books.dart';

class TestCategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  const TestCategoryItem({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  void selectCategory(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return CategoryBooks();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
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
      ),
    );
  }
}
