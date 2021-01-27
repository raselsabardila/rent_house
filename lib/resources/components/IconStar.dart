import 'package:flutter/material.dart';
import 'package:rent_house/resources/style/Style.dart';

class IconStar extends StatelessWidget {
  List<Widget> _icons = [];
  int _active;

  IconStar(int active) {
    this._active = active;
    this._setIcons();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: this._icons,
    );
  }

  void _setIcons() {
    for (var i = 0; i < 5; i++) {
      if (i < this._active) {
        this._icons.add(Icon(Icons.star, color: primaryRed, size: 16));
      } else {
        this._icons.add(Icon(Icons.star, color: primaryRed.withOpacity(0.3), size: 16));
      }
    }
  }
}
