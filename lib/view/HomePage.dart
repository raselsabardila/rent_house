import 'package:flutter/material.dart';
import 'package:rent_house/resources/components/CarouselList.dart';
import 'package:rent_house/resources/components/IconStar.dart';
import 'package:rent_house/resources/components/ListHouse.dart';
import 'package:rent_house/resources/style/Style.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: primaryBlack,
              ),
              onPressed: () {}),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Find Your\nPerfect Place!",
                  style: titlePage,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 20, top: 30),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 8,
                            offset: Offset(0, 0),
                            spreadRadius: 3,
                            color: primaryBlue.withOpacity(0.03))
                      ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 120,
                        height: double.infinity,
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 18),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Find your dream home",
                                hintStyle: subTitle),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 40,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            color: primaryBlue,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Icon(Icons.search, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  margin: EdgeInsets.only(top: 35),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CarouselList("Modern House", "Bandung", 4,
                          "https://images.unsplash.com/photo-1558969763-1e911dcd91e6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fG1vZGVybiUyMGhvdXNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                      CarouselList("Village House", "Garut", 3,
                          "https://images.unsplash.com/photo-1610304124769-1d7e79cc9acf?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8dmlsbGFnZSUyMGhvdXNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "Recommended for you",
                  style: titleBody,
                ),
                ListHouse("Wooden House", "Tasikmalaya", 5,
                    "https://images.unsplash.com/photo-1506242612608-3f589775498a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fHdvb2RlbiUyMGhvdXNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                ListHouse("Triangle House", "Jayapura", 3,
                    "https://images.unsplash.com/photo-1498845914050-92ccc5f5dab1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fHdvb2RlbiUyMGhvdXNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                ListHouse("Hill House", "Padang", 1,
                    "https://images.unsplash.com/photo-1574664598429-9d95d9486688?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8aGlsbCUyMGhvdXNlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
