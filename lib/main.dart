import 'package:expenseplanner/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

import 'package:expenseplanner/widgets/new_transaction.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                  height: 50,
                  child: Card(
                    elevation: 10,
                    color: Colors.blueGrey,
                    child: Text("Chart"),
                  ),
                ),
              UserTransactions()
            ],
          ),
        ));
  }
}
