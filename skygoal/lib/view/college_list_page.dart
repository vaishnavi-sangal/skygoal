import 'package:flutter/material.dart';
import 'package:skygoal/view/college_detail.dart';

class CollegeListPage extends StatefulWidget {
  const CollegeListPage({Key? key}) : super(key: key);

  @override
  State<CollegeListPage> createState() => _CollegeListPageState();
}

class _CollegeListPageState extends State<CollegeListPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<String> genres = [
      " MVSH Engineering college ",
      " MVSH Engineering college ",
      " MVSH Engineering college ",
    ];

    return Scaffold(
      body: Column(
        children: [
          Container(
              height: size.height * 0.18,
              width: size.width,
              decoration: BoxDecoration(
                  color: Color(0xFF0E3C6E),
                  borderRadius: BorderRadius.circular(30.0)),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 250,
                            padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 0.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 4,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                ]),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.search,
                                  color: Color(0xFFD6D6D6),
                                  size: 20,
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: TextField(
                                    onChanged: (value) {},
                                    decoration: InputDecoration(
                                      hintText:
                                          "Search for colleges,schools and university",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Lato',
                                        color: Color(0xFFD6D6D6),
                                        fontSize: 14.0,
                                      ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: size.width * 0.002),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0.0, 1.0),
                                      blurRadius: 4,
                                      color: Colors.black.withOpacity(0.25),
                                    ),
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.mic,
                                  color: Color(0xFF0E3C6E),
                                  size: 22,
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              )),
          SizedBox(height: 20),
          Container(
            height: size.height * 0.04,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: genres.length,
              itemBuilder: (context, index) => category(genres[index]),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  CollegeCard(
                      size,
                      "https://s3-alpha-sig.figma.com/img/81af/e3ab/1b4d6d4ea112a06506e92a4551a40e41?Expires=1684108800&Signature=MrH-Jb3nmaBb1-sllLC1QdoQ~3eV6PwhuhYCMOGwek1BYXg6MD4cMjadiRtBp8lSea33j7psyR97nBznQqaoda37n1pcD~y-40NtvgXEX9I5EtZ~CLw6s1KSAjWEJ~tXNF6DC3bmgq3bxj2ACLwLpymexh~B2C415KvY4Dbhibl5nse0RjInBcujsXW8xZw1gdvHv9iiACptCUvYe1kmGV0tLYKAYEjYAhRdyIi3duHScQll~vlfR4AuguGxAZbMLzyZPOmiLT6L9sp6aiXU-J3RdurrkhR4n1Z00cntLLC~Pp1ig-NfVvS5jdeZonCNRQeGBfnmv1Mrg2yX2gXR-g__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                      "GHJK Engineering college"),
                  CollegeCard(
                      size,
                      "https://www.figma.com/file/7XaIws0wlTqPMnQDBuj97h/image/286fed1c340a45227b907c96d71921f587e87574?fuid=1056804369553678142",
                      "Bachelor of Technology"),
                  CollegeCard(
                      size,
                      "https://s3-alpha-sig.figma.com/img/0657/d76d/58334368868d0297d295ef1ddde4a42c?Expires=1684108800&Signature=pD4m-KPhvvTDabunJM6sKq5iUPR6hoKCNxOhDKx9Lai3efTw4vLknEQoTFHRnRAUUYxtm85NXKFXna1eYbisxU5tlVJ2l7i0qEcglcJKiKUIux1GYa-3E2CinwFQiuH4K1OfaNSLZXwsF~gx3FprMDDmKEoWTFHoU3M5mqkaTaMn8uWmQ6jE3dUoftt7CQknGZEp8YVFzf-jysB09InqG5-Jr46zjjwy2nbY8xrTdb3sAPpFeQYrPQAUqizZcgT1r7u57Y4HLKY6Ezd7shMxFXOeetNOhqNAmQjTit5ckEOE66qPyMVb24pcBHJ0N53KWDDc4RgZ899tWwG50NQ3lQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                      "Bachelor of Architecture"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget CollegeCard(Size size, String imageurl, String name) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => CollegeDetail())),
          child: Container(
            height: size.height * 0.32,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.black.withOpacity(0.2)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  )
                ]),
            child: Column(
              children: [
                Container(
                  height: 116,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20.0)),
                    image: DecorationImage(
                      image: NetworkImage(imageurl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 15,
                        left:
                            15, //give the values according to your requirement
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.share, color: Colors.black)),
                      ),
                      Positioned(
                        top: 15,
                        right:
                            15, //give the values according to your requirement
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.bookmark_border,
                                color: Colors.black, size: 30)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 12, 18, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Lato',
                              fontSize: 16.0)),
                      Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF27C200),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("4.3",
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFFffffff))),
                                Icon(Icons.star, color: Colors.white, size: 19)
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 12, 18, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 210,
                          child: Text(
                              maxLines: 2,
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                              style: TextStyle(
                                  wordSpacing: 2.0,
                                  color: Color(0xFF8E8E8E),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Lato',
                                  fontSize: 9.0))),
                      Container(
                        height: 22,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Color(0xFF0E3C6E),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Center(
                            child: Text(
                                textAlign: TextAlign.center,
                                "Apply Now",
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFffffff)))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 8, 18, 0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 2, 18, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            ImageIcon(AssetImage("assets/like.png"),
                                color: Colors.blueAccent, size: 27),
                            SizedBox(width: 3),
                            Text("More than 1000+ students have been placed",
                                style: TextStyle(
                                    wordSpacing: 2.0,
                                    color: Color(0xFF8E8E8E),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Lato',
                                    fontSize: 10.0)),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.remove_red_eye_outlined,
                                color: Color(0xFFA9A9A9)),
                            SizedBox(width: 3),
                            Text("468+",
                                style: TextStyle(
                                    wordSpacing: 2.0,
                                    color: Color(0xFF8E8E8E),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Lato',
                                    fontSize: 10.0)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget category(String name) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFF),
        border: Border.all(color: Colors.black.withOpacity(0.29)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        name,
        style: TextStyle(
            color: Color(0xFF000000), fontSize: 15, fontFamily: 'Lato'),
      ),
    );
  }
}
