import 'package:better_flutter_chapter_six/chapter_six/test/dummy.dart';
import 'package:better_flutter_chapter_six/chapter_six/test/test_category_item.dart';
import 'package:flutter/material.dart';

class NewCategoryGridWidget extends StatelessWidget {
  const NewCategoryGridWidget({
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
        return TestCategoryItem(title: e.title, color: e.color);
      }).toList(),
    );
  }
}
