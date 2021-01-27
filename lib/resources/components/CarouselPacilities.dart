import 'package:flutter/material.dart';
import 'package:rent_house/resources/style/Style.dart';

class CarouselPacilities extends StatelessWidget {
  String _name, _imgURL;

  CarouselPacilities(this._name, this._imgURL);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 20),
        child: Column(
          children: <Widget>[
            Container(
              width: 150,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 0),
                        spreadRadius: 3,
                        color: primaryBlue.withOpacity(0.09)),
                  ]),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 125,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(this._imgURL),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      this._name,
                      style: nameList.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
