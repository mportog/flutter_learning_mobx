import 'package:counter_demo_mobx/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Mobx Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Counter counter = Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Apertando os botões, você formou este número:',
            ),
            Observer(builder: (_) {
              return Text(
                '${counter.count}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton.icon(
                  onPressed: counter.decrement,
                  icon: Icon(Icons.remove),
                  label: Text('decrementar'),
                  color: Colors.red[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                RaisedButton.icon(
                  onPressed: counter.increment,
                  icon: Icon(Icons.add),
                  label: Text('incrementar'),
                  color: Colors.green[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Zerar'),
        onPressed: counter.reset,
        icon: Icon(Icons.restore),
      ),
    );
  }
}
