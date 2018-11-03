import 'package:cashflow/storage.dart';
import 'package:flutter/material.dart';
import 'package:cashflow/expenses.dart';

// Create a Form Widget
class IncomeStreams extends StatefulWidget {
  @override
  IncomeFormState createState() {
    return IncomeFormState();
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class IncomeFormState extends State<IncomeStreams> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<IncomeFormState>!
  final _formKey = GlobalKey<FormState>();

  // Controller to retieve the text input
  final salaryController = new TextEditingController(text: "0");
  final pensionController = new TextEditingController(text: "0");
  final capitalGainController = new TextEditingController(text: "0");
  final rentController = new TextEditingController(text: "0");

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    salaryController.dispose();
    pensionController.dispose();
    capitalGainController.dispose();
    rentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Income Streams'),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new ListView(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: salaryController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Salary",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: pensionController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Pension",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: capitalGainController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Capital Gain",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: rentController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Rent",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                      },
                    ),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          // Validate will return true if the form is valid, or false if
                          // the form is invalid.
                          localStorage.setItem("salary", salaryController.text);
                          localStorage.setItem(
                              "pension", pensionController.text);
                          localStorage.setItem(
                              "capital_gain", capitalGainController.text);
                          localStorage.setItem("rent", rentController.text);
                        },
                        child: Text('Submit'),
                      ),
                      new RaisedButton(
                        color: Colors.blueAccent,
                        child: new Text('Continue',
                            style: new TextStyle(
                                fontFamily: "Roboto", color: Colors.white)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Expenses1()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
