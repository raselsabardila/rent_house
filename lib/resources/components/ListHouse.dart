import 'package:flutter/material.dart';
import 'package:rent_house/resources/style/Style.dart';

import 'IconStar.dart';

class ListHouse extends StatelessWidget {
  String _name, _location, _imgURL;
  int _active;

  ListHouse(this._name, this._location, this._active, this._imgURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 15, right: 20),
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 8,
                offset: Offset(0, 0),
                spreadRadius: 3,
                color: primaryBlue.withOpacity(0.03))
          ]),
      child: Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(this._imgURL),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 4),
              Text(
                this._name,
                style: nameList,
              ),
              Text(
                this._location,
                style: subTitle.copyWith(fontSize: 14),
              ),
              SizedBox(height: 10),
              IconStar(this._active)
            ],
          ),
          Spacer(),
          RotatedBox(
            quarterTurns: 2,
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: primaryBlack,
            ),
          )
        ],
      ),
    );
  }
}
