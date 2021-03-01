import 'package:flutter/material.dart';
import 'package:party_flutter_app/Animation/FadeAnimation.dart';

class FindEnevt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 253, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Transform.translate(
                offset: Offset(15, -15),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    shape: BoxShape.circle,
                    color: Colors.yellow[800],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: FadeAnimation(
            1,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "Search Event",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                FadeAnimation(
                  1.2,
                  mekeItem(
                      image:
                          "https://cdn.pixabay.com/photo/2018/06/17/10/38/artist-3480274_1280.jpg",
                      date: 17),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  1.3,
                  mekeItem(
                      image:
                          "https://cdn.pixabay.com/photo/2016/11/22/18/56/audience-1850022_1280.jpg",
                      date: 18),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  1.4,
                  mekeItem(
                      image:
                          "https://cdn.pixabay.com/photo/2016/02/19/10/37/concert-1209323_1280.jpg",
                      date: 19),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  1.5,
                  mekeItem(
                      image:
                          "https://cdn.pixabay.com/photo/2018/01/15/21/50/concert-3084876_1280.jpg",
                      date: 20),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  1.6,
                  mekeItem(
                      image:
                          "https://cdn.pixabay.com/photo/2015/10/12/15/11/concert-984276_1280.jpg",
                      date: 21),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget mekeItem({image, date}) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20.0),
          width: 50.0,
          height: 200.0,
          child: Column(
            children: [
              Text(
                date.toString(),
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "SEP",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
          ),
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(.4),
                  Colors.black.withOpacity(.1),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Bumbershoot 2019",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "19:00 PM",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }
}
