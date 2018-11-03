import 'package:cashflow/storage.dart';
import 'package:flutter/material.dart';

class IncomeReport extends StatelessWidget {
  static double _checkItem(var n) {
    if (n == null) {
      return double.parse("0");
    }
    return double.parse(n);
  }

  static double salary = _checkItem(localStorage.getItem('salary'));
  static double pension = _checkItem(localStorage.getItem('pension'));
  static double rent = _checkItem(localStorage.getItem('rent'));
  static double capitalGain = _checkItem(localStorage.getItem('capital_gain'));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('CashFlow'),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new ListView(
          padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            new Text(
              "Income Report",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 25.0, color: Colors.orange[700]),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(salary != null ? '$salary' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Salary"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(pension != null ? '$pension' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text('Pension'),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(capitalGain != null ? '$capitalGain' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Capital Gain"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(rent != null ? '$rent' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text('Rent'),
                ),
              ],
            )),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
