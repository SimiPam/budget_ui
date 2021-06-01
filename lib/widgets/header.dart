import 'package:audit_app/config/data.dart';
import 'package:flutter/material.dart';

class WalletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Michael's Wallet",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                boxShadow: customShadow,
                color: primaryColor,
                shape: BoxShape.circle),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Colors.deepOrange, shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: customShadow,
                        shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.notifications,
                    size: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
