import 'package:better_flutter_chapter_six/chapter_six/test_category/category_books.dart';
import 'package:flutter/material.dart';
import '/chapter_six/test_category/dummy.dart';
import '/chapter_six/test_category/test_category_item.dart';

class TestCategory extends StatelessWidget {
  const TestCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Category',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: TCHome(),
      routes: {
        '/test': (context) => CategoryBooks(),
      },
    );
  }
}

class TCHome extends StatelessWidget {
  const TCHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Books Category'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: TCBody(),
    );
  }
}

class TCBody extends StatelessWidget {
  const TCBody({Key? key}) : super(key: key);

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
