import 'package:flutter/material.dart';
import 'package:rent_house/resources/style/Style.dart';

class IconAgent extends StatelessWidget {
  IconData _icon;

  IconAgent(this._icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: primaryBlue.withOpacity(0.1)),
      child: Center(
        child: Icon(
          this._icon,
          color: primaryBlue,
          size: 18,
        ),
      ),
    );
  }
}
