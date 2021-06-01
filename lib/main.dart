import 'package:audit_app/config/data.dart';
import 'package:audit_app/widgets/cardSection.dart';
import 'package:audit_app/widgets/expensesSection.dart';
import 'package:audit_app/widgets/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: CardSection(),
          ),
          Expanded(
            child: ExpensesSection(),
          ),
        ],
      ),
    );
  }
}
