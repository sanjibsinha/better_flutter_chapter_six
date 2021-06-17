import 'package:flutter/material.dart';

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
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        Container(
          padding: EdgeInsets.all(
            20.0,
          ),
          child: Text('data'),
        ),
        Container(
          padding: EdgeInsets.all(
            20.0,
          ),
          child: Text('data'),
        ),
      ],
    );
  }
}
