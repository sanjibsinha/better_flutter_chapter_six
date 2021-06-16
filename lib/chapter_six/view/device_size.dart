import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceSize extends StatelessWidget {
  const DeviceSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Device Orientation Style',
      debugShowCheckedModeBanner: false,
      home: DeviceSizeMainPage(),
    );
  }
}

class DeviceSizeMainPage extends StatefulWidget {
  DeviceSizeMainPage({Key? key}) : super(key: key);

  @override
  _DeviceSizeMainPageState createState() => _DeviceSizeMainPageState();
}

class _DeviceSizeMainPageState extends State<DeviceSizeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Device Size Orientation Style'),
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () =>
                SystemChrome.setPreferredOrientations(DeviceOrientation.values),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: OrientationBuilder(
          builder: (context, orientation) =>
              orientation == Orientation.portrait ? Portrait() : Landscape(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.rotate_left),
        onPressed: () {
          final isPortrait =
              MediaQuery.of(context).orientation == Orientation.portrait;

          if (isPortrait) {
            setLandscape();
          } else {
            setPortrait();
          }
        },
      ),
    );
  }
}

Future setPortrait() async => await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

Future setLandscape() async => await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

class Landscape extends StatelessWidget {
  const Landscape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
            "https://sanjibsinha.com/wp-content/uploads/2021/04/data-type-php.jpg"),
        const SizedBox(width: 16),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Any Headline',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.redAccent,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '''
                    Some Text

                    ''',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue.shade600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Portrait extends StatelessWidget {
  const Portrait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
          "https://sanjibsinha.com/wp-content/uploads/2021/04/data-type-php.jpg",
        ),
        const SizedBox(height: 16),
        Column(
          children: [
            Text(
              'Any Headline',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.redAccent),
            ),
            const SizedBox(height: 16),
            Text(
              '''
                Some Text
                ''',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
