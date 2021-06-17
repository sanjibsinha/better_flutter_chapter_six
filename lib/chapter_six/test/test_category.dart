import 'package:flutter/material.dart';
import '/chapter_six/test/new_category_grid.dart';

class TestCategory extends StatelessWidget {
  const TestCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Category',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: TCHomePage(),
    );
  }
}

class TCHomePage extends StatelessWidget {
  const TCHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Books'),
      ),
      body: TCHomeMainBody(),
    );
  }
}

class TCHomeMainBody extends StatelessWidget {
  const TCHomeMainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewCategoryGridWidget();
  }
}
