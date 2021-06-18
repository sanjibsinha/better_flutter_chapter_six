import 'package:flutter/material.dart';
import '/chapter_six/test/dummy.dart';
import '/chapter_six/test/test_category_item.dart';

class NewGridViewWidget extends StatelessWidget {
  const NewGridViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES.map((e) {
        return TestCategoryItem(id: e.id, title: e.title, color: e.color);
      }).toList(),
    );
  }
}
