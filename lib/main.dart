import 'package:flutter/material.dart';
import '/chapter_six/view/new_column_widget.dart';
import '/chapter_six/test_category/test_category.dart';
// import '/chapter_six/test/test_category.dart';
// import '/chapter_six/view/device_size.dart';

main() {
  /* WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]); */

  /// we'll keep changing the main app here
  ///

  // runApp(MaterialDesign());
  /* runApp(
    ContainerColumnRow(),
  ); */
  runApp(
    // DeviceSize(),
    // MyApp(),
    TestCategory(),
  );
}

/// this app is for show, it was built while we had created the
/// flutter app

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5.0),
        child: NewColumnWidget(),
      ),
    );
  }
}
