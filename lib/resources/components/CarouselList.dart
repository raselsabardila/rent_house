import 'package:flutter/material.dart';
import 'package:rent_house/resources/components/IconStar.dart';
import 'package:rent_house/resources/style/Style.dart';
import 'package:rent_house/view/DetailPage.dart';

class CarouselList extends StatelessWidget {
  String _name, _location, _imgURL;
  int _active;

  CarouselList(this._name, this._location, this._active, this._imgURL);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailPage();
        }));
      },
      child: Container(
          margin: EdgeInsets.only(right: 20),
          width: 270,
          height: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 8,
                    offset: Offset(0, 0),
                    spreadRadius: 3,
                    color: primaryBlue.withOpacity(0.03)),
              ]),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(this._imgURL), fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          this._name,
                          style: nameList,
                        ),
                        Text(
                          this._location,
                          style: subTitle.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    Spacer(),
                    IconStar(this._active)
                  ],
                ),
              )
            ],
          )),
    );
  }
}
