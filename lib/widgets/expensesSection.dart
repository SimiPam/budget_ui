import 'package:audit_app/config/data.dart';
import 'package:audit_app/widgets/pieChart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpensesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Text(
            "Expenses",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses
                      .map((value) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor:
                                      pieColors[expenses.indexOf(value)],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  value['name'],
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
            Expanded(flex: 6, child: PieChart())
          ],
        ),
      ],
    );
  }
}
