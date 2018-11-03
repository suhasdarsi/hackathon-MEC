import 'package:flutter/material.dart';
import 'package:cashflow/analysis.dart';
import 'package:cashflow/storage.dart';

// Create a Form Widget
class Expenses1 extends StatefulWidget {
  @override
  Expenses1FormState createState() {
    return Expenses1FormState();
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class Expenses1FormState extends State<Expenses1> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<Expenses1FormState>!
  final _formKey1 = GlobalKey<FormState>();

  final housingController = new TextEditingController(text: "0");
  final vehicleController = new TextEditingController(text: "0");
  final educationController = new TextEditingController(text: "0");
  final personalController = new TextEditingController(text: "0");
  final emiController = new TextEditingController(text: "0");
  final insuranceController = new TextEditingController(text: "0");

  @override
  void dispose() {
    housingController.dispose();
    vehicleController.dispose();
    educationController.dispose();
    personalController.dispose();
    emiController.dispose();
    insuranceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Expenses'),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new ListView(
          children: <Widget>[
            Form(
              key: _formKey1,
              autovalidate: true,
              child: new Column(
                // padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: housingController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Home Loan",
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
                      controller: vehicleController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Vehicle Loan",
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
                      controller: educationController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Education Loan",
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
                      controller: personalController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Personal Loan",
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
                      controller: emiController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "EMIs",
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
                      controller: insuranceController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Insurance",
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
                          // if (_formKey1.currentState.validate()) {
                          //   // If the form is valid, we want to show a Snackbar
                          //   Scaffold.of(context).showSnackBar(
                          //       SnackBar(content: Text('Processing Data')));
                          // }
                          localStorage.setItem(
                              "home_loan", housingController.text);
                          localStorage.setItem(
                              "vehicle_loan", vehicleController.text);
                          localStorage.setItem(
                              "education_loan", educationController.text);
                          localStorage.setItem(
                              "personal_loan", personalController.text);
                          localStorage.setItem("emi", emiController.text);
                          localStorage.setItem(
                              "insurance", insuranceController.text);
                        },
                        child: Text('Submit'),
                      ),
                      new RaisedButton(
                        color: Colors.blueAccent,
                        child: new Text(
                          'Continue',
                          style: new TextStyle(
                              fontFamily: "Roboto", color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Expenses2()),
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

class Expenses2 extends StatefulWidget {
  @override
  Expenses2FormState createState() {
    return Expenses2FormState();
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class Expenses2FormState extends State<Expenses2> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<Expenses1FormState>!
  final _formKey2 = GlobalKey<FormState>();

  final electricityController = new TextEditingController(text: "0");
  final waterController = new TextEditingController(text: "0");
  final phoneController = new TextEditingController(text: "0");
  final schoolController = new TextEditingController(text: "0");
  final subscriptionController = new TextEditingController(text: "0");
  final rentController = new TextEditingController(text: "0");

  @override
  void dispose() {
    electricityController.dispose();
    waterController.dispose();
    phoneController.dispose();
    schoolController.dispose();
    subscriptionController.dispose();
    rentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Expenses'),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new ListView(
          children: <Widget>[
            Form(
              key: _formKey2,
              autovalidate: true,
              child: new Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: electricityController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Electricity Bill",
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
                      controller: waterController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Water Bill",
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
                      controller: phoneController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Phone Bill",
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
                      controller: schoolController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "School / College Fees",
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
                      controller: subscriptionController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Monthly Subscriptions",
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
                        labelText: "Home Rent",
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
                          // if (_formKey2.currentState.validate()) {
                          //   // If the form is valid, we want to show a Snackbar
                          //   Scaffold.of(context).showSnackBar(
                          //       SnackBar(content: Text('Processing Data')));
                          // }
                          localStorage.setItem(
                              "electricity", electricityController.text);
                          localStorage.setItem("water", waterController.text);
                          localStorage.setItem("phone", phoneController.text);
                          localStorage.setItem("school", schoolController.text);
                          localStorage.setItem(
                              "subscription", subscriptionController.text);
                          localStorage.setItem(
                              "house_rent", rentController.text);
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
                                builder: (context) => new Expenses3()),
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

class Expenses3 extends StatefulWidget {
  @override
  Expenses3FormState createState() {
    return Expenses3FormState();
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class Expenses3FormState extends State<Expenses3> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<Expenses1FormState>!
  final _formKey3 = GlobalKey<FormState>();

  final foodController = new TextEditingController(text: "0");
  final travelController = new TextEditingController(text: "0");
  final clothingController = new TextEditingController(text: "0");
  final groomingController = new TextEditingController(text: "0");
  final homeSuppliesController = new TextEditingController(text: "0");
  final socialController = new TextEditingController(text: "0");

  @override
  void dispose() {
    foodController.dispose();
    travelController.dispose();
    clothingController.dispose();
    groomingController.dispose();
    homeSuppliesController.dispose();
    socialController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Expenses'),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new ListView(
          children: <Widget>[
            Form(
              key: _formKey3,
              autovalidate: true,
              child: new Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: foodController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Food / Groceries",
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
                      controller: travelController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Travel / Commute Expenses",
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
                      controller: groomingController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Grooming / Personal Care",
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
                      controller: homeSuppliesController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Home Supplies / Repairs",
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
                      controller: socialController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Social / Hangout Expenses",
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
                      controller: clothingController,
                      decoration: new InputDecoration(
                        filled: true,
                        labelText: "Clothing Purchase",
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
                          // if (_formKey3.currentState.validate()) {
                          //   // If the form is valid, we want to show a Snackbar
                          //   Scaffold.of(context).showSnackBar(
                          //       SnackBar(content: Text('Processing Data')));
                          // }
                          localStorage.setItem("food_exp", foodController.text);
                          localStorage.setItem(
                              "travel_exp", travelController.text);
                          localStorage.setItem(
                              "clothing_exp", clothingController.text);
                          localStorage.setItem(
                              "grooming_exp", groomingController.text);
                          localStorage.setItem(
                              "home_supplies_exp", homeSuppliesController.text);
                          localStorage.setItem(
                              "social_exp", socialController.text);
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
                                builder: (context) => new Analysis()),
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
