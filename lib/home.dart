import 'package:flutter/material.dart';
import 'package:cashflow/income.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Cashflow"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text(
                "MENU",
                style: new TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            new Divider(),
            new ListTile(
                title: new Text(
                  "Income",
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                // trailing: new Icon(Icons.info),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/income');
                }),
            new ListTile(
                title: new Text(
                  "Expenses",
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                // trailing: new Icon(Icons.phone),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/expenses');
                }),
            new ListTile(
                title: new Text(
                  "Analysis",
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                // trailing: new Icon(Icons.phone),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/analysis');
                }),
            new ListTile(
                title: new Text(
                  "About",
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                // trailing: new Icon(Icons.phone),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/about');
                }),
            new ListTile(
                title: new Text(
                  "Contact",
                  style: new TextStyle(
                    fontSize: 17.0,
                  ),
                ),
                // trailing: new Icon(Icons.phone),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/contact');
                }),
          ],
        ),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // new Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 16.0),
            //   new Text("Welcome to CashFlow!", style: new TextStyle(fontSize: 35.0)),
            // ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                child: new Text(
                  "Welcome to",
                  textAlign: TextAlign.center,
                  style: new TextStyle(fontFamily: "Roboto", fontSize: 15.0),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 70.0),
                child: new Text(
                  "CashFlow",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Colors.orange[700],
                      fontFamily: "Roboto",
                      fontSize: 45.0),
                )),
            new RaisedButton(
              child: const Text(
                'START',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              color: Colors.blueAccent,
              elevation: 4.0,
              splashColor: Colors.blueGrey,
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new IncomeStreams()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
