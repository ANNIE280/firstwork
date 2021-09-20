import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my work',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('First work'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('this is my first app'),
            Text('learning about column'),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('creating my first app'),
                Text('learning about Row'),
              ],
            )),
            Stack(
              children: [
                Image(image: AssetImage('assets/images/ann.jpeg')),
                Container(
                  color: Colors.black,
                  height: 100,
                  width: 50,
                ),
                Positioned(
                  left: 10,
                  child: Container(
                    height: 30,
                    width: 20,
                    color: Colors.blue,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
