import 'package:cashflow/storage.dart';
import 'package:flutter/material.dart';
import 'package:cashflow/saveTax.dart';

class TaxReport extends StatelessWidget {
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

  static double incomeT1 = salary + pension + rent;

  static double incomeT2 = capitalGain;

  static double totalIncome = incomeT1 + incomeT2;
  static double yearlyIncome1 = incomeT1 * (12.0);

  static double taxP2 = incomeT2 * (0.15);

  static double taxCalc(income) {
    double tax;
    if (income <= 250000.0) {
      tax = 0.0;
    } else if (250000.0 < income && income <= 500000.0) {
      tax = (income - 250000.0) * (0.10);
    } else if (income > 500000.0 && income <= 1000000.0) {
      tax = 25000.0 + (income - 500000.0) * (0.20);
    } else if (income > 1000000.0) {
      tax = 125000.0 + (income - 1000000.0) * (0.30);
    }
    return tax;
  }

  static double taxP1 = taxCalc(yearlyIncome1);
  static double incomeTax = taxP1 / 12;
  static double capitalTax = taxP2 / 12;
  static double totalTax = (taxP1 + taxP2) / 12;
  static double freeCash = incomeT1 + incomeT2 - totalTax - expenses;

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
              "Tax Report",
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
                  title: Text(incomeTax != null ? '$incomeTax' : "0.0",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Income Tax"),
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
                  subtitle: Text('Capital Gain Tax'),
                ),
              ],
            )),
            SizedBox(
              height: 10.0,
            ),
            new RaisedButton(
              child: const Text(
                'CLICK HERE TO SAVE TAX',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              color: Colors.blueAccent,
              elevation: 4.0,
              padding: EdgeInsets.all(15.0),
              splashColor: Colors.blueGrey,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new SaveTax()));
              },
            ),
            // Card(
            //     color: Colors.blueAccent,
            //     child: Column(
            //       mainAxisSize: MainAxisSize.min,
            //       children: <Widget>[
            //         ListTile(
            //           //leading: Icon(Icons.album),
            //           title: Text("SAVE TAX",
            //               style: new TextStyle(
            //                   fontSize: 16.0, color: Colors.white)),
            //         ),
            //       ],
            //     )),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
