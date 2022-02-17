import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is my first flutter application',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: const MyHomePage(title: 'Flutter Practice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  child: const Text('first column')
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up),
                  label: const Text('Good'),
                )
              ]
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  child: const Text('second column')
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  label: const Text('Like'),
                )
              ]
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  child: const Text('third  column')
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.flight),
                  label: const Text('Flight'),
                )
              ]
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
