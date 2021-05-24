import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var sum = 0;
  void doAddition() {
    setState(() {
      sum = 15;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Container(
              height: 30,
              width: 90,
              color: Colors.blue,
              child: Center(child: Text("Display"))),
          onPressed: () {
            doAddition();
            if (sum < 10) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        height: 150,
                        child: Column(
                          children: <Widget>[
                            Text("Sum less than 10"),
                            Text("sum = " + sum.toString()),
                          ],
                        ),
                      ),
                    );
                  });
            } else if (sum > 10 && sum < 20) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        height: 150,
                        child: Column(
                          children: <Widget>[
                            Text("Sum greater than 10 but less than 20"),
                            Text("sum = " + sum.toString()),
                          ],
                        ),
                      ),
                    );
                  });
            } else if (sum > 20 && sum < 30) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        height: 150,
                        child: Column(
                          children: <Widget>[
                            Text("Sum greater than 20 but less than 30"),
                            Text("sum = " + sum.toString()),
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        height: 150,
                        child: Column(
                          children: <Widget>[
                            Text("Sum greater than 30"),
                            Text("sum = " + sum.toString()),
                          ],
                        ),
                      ),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
