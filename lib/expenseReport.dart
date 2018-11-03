import 'package:cashflow/storage.dart';
import 'package:flutter/material.dart';

class ExpenseReport extends StatelessWidget {
  static double _checkItem(var n) {
    if (n == null) {
      return double.parse("0");
    }
    return double.parse(n);
  }

// Expenses
  static double homeLoan = _checkItem(localStorage.getItem('home_loan'));
  static double educationLoan =
      _checkItem(localStorage.getItem('education_loan'));
  static double vehicleLoan = _checkItem(localStorage.getItem('vehicle_loan'));
  static double personalLoan =
      _checkItem(localStorage.getItem('personal_loan'));
  static double emi = _checkItem(localStorage.getItem('emi'));
  static double insurance = _checkItem(localStorage.getItem('insurance'));

  static double electricity = _checkItem(localStorage.getItem('electricity'));
  static double water = _checkItem(localStorage.getItem('water'));
  static double houseRent = _checkItem(localStorage.getItem('house_rent'));
  static double phoneBill = _checkItem(localStorage.getItem('phone'));
  static double school = _checkItem(localStorage.getItem('school'));
  static double subscriptions =
      _checkItem(localStorage.getItem('subscription'));

  static double food = _checkItem(localStorage.getItem('food_exp'));
  static double travel = _checkItem(localStorage.getItem('travel_exp'));
  static double clothing = _checkItem(localStorage.getItem('clothing_exp'));
  static double grooming = _checkItem(localStorage.getItem('groomin_exp'));
  static double homeSupplies =
      _checkItem(localStorage.getItem('home_supplies_exp'));
  static double social = _checkItem(localStorage.getItem('social_exp'));

  static double expenses1 =
      homeLoan + educationLoan + vehicleLoan + personalLoan + insurance + emi;

  static double expenses2 =
      electricity + water + phoneBill + houseRent + school + subscriptions;

  static double expenses3 =
      food + travel + clothing + grooming + homeSupplies + social;

  static double expenses = expenses1 + expenses2 + expenses3;

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
              "Expense Report",
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
                  title: Text(homeLoan != null ? '$homeLoan' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Home Loan"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(educationLoan != null ? '$educationLoan' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Education Loan"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(vehicleLoan != null ? '$vehicleLoan' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Vehicle Loan"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(personalLoan != null ? '$personalLoan' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Personal Loan"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(emi != null ? '$emi' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("EMIs"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(insurance != null ? '$insurance' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Insurance"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(electricity != null ? '$electricity' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Electricity Bill"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(water != null ? '$water' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Water Bill"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(houseRent != null ? '$houseRent' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Home Rent"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(phoneBill != null ? '$phoneBill' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Phone Bill"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(school != null ? '$school' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("School / College Fees"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(subscriptions != null ? '$subscriptions' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Monthly Subscriptions"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(food != null ? '$food' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Food / Groceries Expenses"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(travel != null ? '$travel' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Travel / Commute Expenses"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(clothing != null ? '$clothing' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Clothing Purchase"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(grooming != null ? '$grooming' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text('Grooming / Personal Care'),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(social != null ? '$social' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Social / Hangout Expenses"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text(homeSupplies != null ? '$homeSupplies' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Home Supplies / Repairs"),
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
