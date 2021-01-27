import 'package:flutter/material.dart';
import 'package:rent_house/resources/components/CarouselPacilities.dart';
import 'package:rent_house/resources/components/IconAgent.dart';
import 'package:rent_house/resources/components/IconStar.dart';
import 'package:rent_house/resources/style/Style.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1558969763-1e911dcd91e6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fG1vZGVybiUyMGhvdXNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        fit: BoxFit.cover)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 20,
                          color: primaryBlack,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Modern House",
                                style: titleBody,
                              ),
                              Text(
                                "KBP Bandung, Indonesia",
                                style: subTitle,
                              )
                            ],
                          ),
                          Spacer(),
                          IconStar(4)
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Listing Agent",
                      style: nameList,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.red,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "John Wick",
                                style: nameList.copyWith(fontSize: 18),
                              ),
                              Text(
                                "House Owner",
                                style: subTitle.copyWith(fontSize: 15),
                              )
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: <Widget>[
                              IconAgent(Icons.phone),
                              SizedBox(width: 10),
                              IconAgent(Icons.chat)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "House Facilities",
                      style: nameList,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          CarouselPacilities("Swimming Pool",
                              "https://images.unsplash.com/photo-1536745511564-a5fa6e596e7b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8c3dpbW1pbmclMjBwb29sfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                          CarouselPacilities("4 Bedroom",
                              "https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVkcm9vbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                          CarouselPacilities("Garage",
                              "https://images.unsplash.com/photo-1594818020972-e96e722493f7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Z2FyYWdlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                          CarouselPacilities("Farm",
                              "https://images.unsplash.com/photo-1565784900709-3bd5bb123a1e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDB8fGZhcm18ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Description", style: nameList),
                          Text(
                            "Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                            style: subTitle.copyWith(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(
                        right: 20, top: 10, bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Price",
                                style: subTitle,
                              ),
                              Text(
                                "\$7,500",
                                style: titlePage.copyWith(color: primaryBlue),
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 180,
                            height: double.infinity,
                            decoration: BoxDecoration(
                                color: primaryBlue,
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: Text(
                                "Book Now",
                                style: nameList.copyWith(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
