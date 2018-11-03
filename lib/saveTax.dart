import 'package:cashflow/storage.dart';
import 'package:flutter/material.dart';

class SaveTax extends StatelessWidget {
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
              "Tax Saving Methods",
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
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text("Tax-exempt Investment Options",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("\nEquity-Linked Savings Schemes - tax exempt upto Rs. 1.5 lakh returns per year\n\n" +
                      "Public Provident Fund - Long term extendable accout with good interest rates and it can be opened in the name of minors also.\n\n" +
                      "Employees Provident Fund - tax exempt upto Rs. 1.5 lakh returns per year\n\n" +
                      "Unit Linked Insurance Plans - hybrid financial product for both saving and protection. The value of the fund on exiting the policy after 5yrs or till maturity is tax-free.\n\n" +
                      "Insurance Plans - Premium paid is tax deducted while mautrity value and death benefit is tax-free.\n\n" +
                      "Sukanya Samriddhi Yojana - SSY offers the highest tax-free return with a sovereign guarantee and annual deposit qualifies for Section 80C benefit and the maturity benefits are non-taxable.\n"),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text("Tax Deductions for Expenses",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text('\nLife Insurance Premiums:\n' +
                      'When you pay premium for life insurance policy for spouse, child, or self, then amount received during maturity of the same policy is non-taxable (under section 80C). The deductions may be subject to terms and conditions as per the policy. Total deduction in this section is up to Rs 1.5 Lakhs.\n\n' +
                      'Medical Insurance Premiums\n' +
                      'Tax deduction is available under Section 80D, for health insurance paid for spouse, your children and self. The deduction viable is Rs. 30,000 for senior citizens and Rs. 25,000 for youngsters.\n\n' +
                      'Deduction for Preventive Health Check-ups:\n' +
                      'Under Section 80D, Rs. 5000 expended on preventive health-check up for self and your family will qualify you to get tax deduction.\n\n' +
                      'Bank Fixed Deposits (FDs):\n' +
                      'Under the Section 80C, if you invest in fixed deposits of bank account for at least 5 years, then you are eligible for tax deduction. But, the interest earned on FD is taxable. Total deduction in this section is up to Rs 1.5 Lakhs.\n\n' +
                      'Public Provident Fund (PPF):\n' +
                      'You get tax deduction on PPF account if you contribute to the same. The facility is under Section 80C. Total deduction in this section is up to Rs 1.5 Lakhs.\n\n' +
                      'Charitable Contribution:\n' +
                      'Under Section 80G, if you donate for charitable causes, then you can declare this contribution prior to December 31, every year to receive tax deductions (up to 50% to 100% depending on the nature of contribution).\n\n' +
                      'Mutual Funds & ELSS:\n' +
                      'As under Section 80C, investing in equity related savings schemes and mutual funds make you eligible for availing tax deductions up to Rs. 1.5 lakhs.\n\n' +
                      'Unit-linked Insurance Plans (ULIP)\n' +
                      'If you invest in ULIPs for your children, self and spouse, then under Section 80C, you will get tax deduction till Rs. 1.5 lakhs.\n\n' +
                      'Infrastructure Bonds:\n' +
                      'You are eligible for deductions for tax under Section 80CCF, if you invest in infrastructure bonds.\n\n' +
                      'Senior Citizen Savings Scheme (SCSS):\n' +
                      'If you are a senior citizen and invest in SCSS by banks, then you can get tax deduction under Section 80C. As other schemes mentioned above, interest earned is taxable. Maximum deduction amount on income tax is Rs 80,000 are the deduction limit for senior citizens under Section 80DDB: Serious Ailment Deduction and Rs. 30,000 for senior citizens under Section 80D: Medical Insurance Deduction.\n\n' +
                      'Treatment of Disabled Dependents:\n' +
                      'Medical expense on treatment of any dependent disabled under your care allows you to get tax deductions as per the Section 80DD. Tax deduction allowed is up to Rs 50,000. Deductions of about Rs 1, 00,000 is applicable if the dependent suffers from severe disability under Section 80DDB.\n\n' +
                      'Retirement Savings Plan:\n' +
                      'Investing in NPS (National Pension Scheme), LIC or other insurance company provided retirement plans make you eligible for getting tax deductions up to Rs. 1.5 lakh.\n\n' +
                      'National Saving Certificate (NSC):\n' +
                      'Under section 80C, whatever amount you contribute in NSC is valid for tax deduction of up to Rs. 1.5 lakh. NSC is secured investment, but interest gained on the same is taxable. But, National Saving Certificates are cumulative, and interest earned can be again invested to get tax deduction.\n\n' +
                      'Post Office Time Deposit (POTD):\n' +
                      'Though investment in POTD for five-years, under Section 80C qualifies for tax deduction up to Rs. 1.5 lakh, interest accrued on it is taxable.\n\n' +
                      'Tuition Fees:\n' +
                      'Under the Section 80C, you can receive tax deduction if you spend on tuition fee of your child\'s education. But this fee has to be paid for full-time education for a college, school, and institution affiliated to Indian University. The deduction of Rs. 100 in a month is valid for fees paid for any two children.\n\n' +
                      'Tuition fee does not indicate development fee or donations given to educational institutions. Subsidy of up to Rs. 300 on a monthly basis for only two children can be availed for their hostel facility.\n\n' +
                      'Interest Paid on Education Loan:\n' +
                      'Interest paid towards education loan makes you capable of tax deduction claim under the Section 80E up to 7 years. This loan can be taken for higher education by an employee, student or child for whom the employee is a legal guardian, or spouse, child of the employee.\n\n' +
                      'Home Loan EMIs:\n' +
                      'EMIs or Equated monthly instalments paid to clear off principal amount on home loan gets you tax deductions under the section 80C. Exemption is up to Rs 2 lakhs on interest payable.\n\n' +
                      'Deduction on House Rent Paid & Stamp Duty/Registration Charges on a Home:\n' +
                      'If an employee rents a residential place for accommodation during his/her employment tenure, then the rental paid can come under tax deduction. This facility is normally for salaried tax payers, as stated in the Section 80GG. Under section 80C, registration and stamp duty charges when transferring property, are eligible for income tax deduction.\n\n' +
                      'A minimum of the following is tax exemption from HRA:\n' +
                      'Rent is less than 10% of salary\n' +
                      'Rs. 5000 per month, i.e. Max Deduction is 60,000.\n' +
                      '25% of whole income\n' +
                      '40% of the income and 50% in metropolitan cities\n\n'),
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  //leading: Icon(Icons.album),
                  title: Text("Other Strategies",
                      style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
                  subtitle: Text("Quick tranfer of Capital Gain"),
                ),
              ],
            )),
            // Card(
            //     child: Column(
            //   mainAxisSize: MainAxisSize.min,
            //   children: <Widget>[
            //     ListTile(
            //       //leading: Icon(Icons.album),
            //       title: Text(rent != null ? '$rent' : "0.0",
            //           style: new TextStyle(fontSize: 16.0, color: Colors.blue)),
            //       subtitle: Text('Rent'),
            //     ),
            //   ],
            // )),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
