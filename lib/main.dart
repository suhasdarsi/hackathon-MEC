import 'package:cashflow/home.dart';
import 'package:flutter/material.dart';
import 'package:cashflow/analysis.dart';
import 'package:cashflow/expenses.dart';
import 'package:cashflow/income.dart';
import 'package:cashflow/incomeReport.dart';
import 'package:cashflow/expenseReport.dart';
import 'package:cashflow/taxReport.dart';
import 'package:cashflow/expenseReport.dart';
import 'package:cashflow/taxReport.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Cashflow',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.deepOrange,
      ),
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MyHomePage(),
        '/analysis': (BuildContext context) => new Analysis(),
        '/expenses': (BuildContext context) => new Expenses1(),
        '/income': (BuildContext context) => new IncomeStreams(),
        '/incomeReport': (BuildContext context) => new IncomeReport(),
        '/taxReport': (BuildContext context) => TaxReport(),
        '/expenseReport': (BuildContext context) => ExpenseReport(),
      },
    );
  }
}
