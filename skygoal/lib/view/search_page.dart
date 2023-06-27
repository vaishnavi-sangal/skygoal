import 'package:flutter/material.dart';
import 'package:skygoal/view/college_list_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              height: size.height * 0.26,
              width: size.width,
              decoration: BoxDecoration(
                  color: Color(0xFF0E3C6E),
                  borderRadius: BorderRadius.circular(30.0)),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Find your own way",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lato',
                                  fontSize: 20.0)),
                          Icon(Icons.notifications_rounded,
                              color: Colors.white, size: 25.0)
                        ],
                      ),
                      SizedBox(height: size.height * 0.014),
                      Text("Search in 600 colleges around!",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lato',
                              fontSize: 14.0)),
                      SizedBox(height: size.height * 0.04),
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
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              height: size.height,
              width: size.width,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  CardImage(
                      context,
                      size,
                      "https://s3-alpha-sig.figma.com/img/0391/867b/41a31e5c9fb9b9169383971e2ae5c08e?Expires=1684108800&Signature=DIMRzYxfpwZHG4u-ch0RLZwQpAQa0ZIrRsnmYPNPAC5ULkFfzYiRo69f~aA3qEznUGIE7IOFXg7uT4k2ePD33oGR-P0SMJ-qFE2HVhmqoN11CzSBOSNND4dhBU3g8uab5nGlWL9FbFJREazmg4HCOk7dS0VZvRpveK65gnJTIWEG2XsEAFmWGQ8q2HRfM3ZY6~cdHc6ftW~OfBkaDwbtmQQwcS-TfX8p1~HeP0WCBRyPAws~3A7RSmRtH8zMPB6R5dnsoZFt~v5ihDepxuZt0B9Oi8QuOtYDh764kN2Mv98cDGs6LYVVD4ZxRCNFhT8E~ddhzkbca80ifZjwmf7Gnw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                      "Top Colleges",
                      "Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future."),
                  CardImage(
                      context,
                      size,
                      "https://s3-alpha-sig.figma.com/img/57a4/fcd4/949a6b4c70954a565574dddd27d0029b?Expires=1684108800&Signature=TG-nZmTk2QgadW8lMIhGzo8zn7vQlSic0fI8iMwMbXu9y3c1o1gZxfQlHy84MastI9NAOmwWkb2Kc9A9fCKOPDzerh3G-yF5mln2bgGJ5I3gTJMxZIc89w47wUgSNam8SmqKYXE~KFJ3qr4zfIglyYBuW939MnvZ4MsAodZ8~-fpiECrTHk6nSG10GHbK06~Byq-YkNO4Xh75-K9IfDsGbmkpmtdDkF-s1H~BU9yHfbaAUt0DISLN9Bsf8i4ANnqqkd3d1dhNzJVY~CbhV4k2iYLsJ~xUrEuCiGoZkEmc4hiH1PFooTLBf-XRuLcni0uY~kdTfkqDbbHapUcfxKTSQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                      "Top Colleges",
                      "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you."),
                  CardImage(
                      context,
                      size,
                      "https://s3-alpha-sig.figma.com/img/dbda/3ab8/48bc20012d52d464871ef8fa73f10a94?Expires=1684108800&Signature=ekaCisJlZkNAjDx4yMXtUrVzsaNdXiE9-n4OUONhq-H4w9uVQgq2Y5CTkBIicazGljqEFtbYln5LlpdiUcAzYAx55geEAlb~9uJ6wQ-qR08SvYFT8932-ttjkwBKzbi0FkknZkTRU83PvaEFP4Sok3smsSCosnN8sZ1hLY8VOALFeo-fHTAv3DUFnM-88YKcQ-psOm0BC0fWtskTKnSPRBdMSxikWDzoeDvK5XrO-Hv1NVbo7OKcLNE--KSwawa~45bhBxi89j9aw6wl0c6izEIZXpJbU~mHxP295sKP6IvFvXV-ztWgdIlart9fYswQk6s78Dxwo7gWM3QpIXvB~Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                      "Exams",
                      "Find an end to end information about the exams that are happening in India."),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget CardImage(BuildContext context, Size size, String url, String title,
      String content) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => BottomPopUp(context),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                ),
              ),
              height: size.height * 0.2,
              width: size.width * 0.9,
              //child: Image.network(url,fit: BoxFit.cover),
            ),
            Container(
              height: size.height * 0.2,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.8),
                  ],
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(right: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Lato',
                            fontSize: 20.0)),
                    SizedBox(height: 10),
                    Text(content,
                        style: TextStyle(
                            wordSpacing: 3.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Lato',
                            fontSize: 12.0)),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20)),
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 7)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("+126",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Lato',
                              fontSize: 11.0)),
                      Text("Colleges ",
                          style: TextStyle(
                              color: Color(0xFF848484),
                              fontFamily: 'Lato',
                              fontSize: 11.0)),
                    ],
                  ),
                ))
          ]),
        ),
        SizedBox(height: size.height * 0.03)
      ],
    );
  }

  int group = 0;
  void BottomPopUp(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.45,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 15, 22, 0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Sort by",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Lato',
                            fontSize: 20.0)),
                    IconButton(
                      icon: Icon(
                        Icons.close_rounded,
                        color: Colors.black.withOpacity(0.4),
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
                Divider(color: Colors.black.withOpacity(0.9)),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                                NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/5c9b/525f/fefb804a9420c33b046bff138bb00423?Expires=1684713600&Signature=XsFLUnGVmYXC1UYN1LnCGtqoQL2kPfNa9Jz0jxOcr2FsNthCUY~~hOqRhNAaniSEsJkaskdL-RT~BTnnK~Gn1F6hGmNUM2hH69qgaXAYjfFKl4WTsr5-odFnv2DyN-kcw-spPPjt~jtPftrWN9eOTlj9sApgEz4FYgTMhQBWbjPb00gKf-mlTRuxXkqUBhudg6ZZ6Vb2BKt6TmMe1Oksy3dFbJ5z6Wo8vT31XnfosjYQVGHZEMsRx2hZFHw8VjN4XUsaBO-pVgf~UzlUv1B8TvEJD9rTruRfey6AI7ysIxSSbGxuMji0nQeKYulWScUhW0JUObP3UWJTdFfgtfWyKg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                color: Colors.black,
                                size: 25),
                            SizedBox(width: 10),
                            Text("Bacheolar of Technology",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Lato',
                                    fontSize: 18.0))
                          ],
                        ),
                        Radio(
                            value: 1,
                            groupValue: group,
                            onChanged: (val) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CollegeListPage()));
                              setState(() {
                                group = val!;
                              });
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                                NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/b65b/7e44/a627079648cc6c64c85b643215605904?Expires=1684713600&Signature=GQC7CarhJix46s78elY9sWmNtXqFNEf0hiqlXkMz9wdGkJ2PjY6Sb3xyH9dYRz600v3wLmArn41Zolg6O0XIZ5~ipmroiL~1fnaoA2AB01lMVhqv15jZwhC76Xt4urbBRNSut7qGi9OVdplIg-~7YHskc2Tu03f3w7E1RVt-tuOQZSade4AnRjbXJeLI1pgQ1mkZcev1-pwtRqncIMVznjOikD4C02WElLrWCHdwKVwTfQgzAoJTjMnLQeDAjlhPyS6by5-R-gNqgg5CdAyF3reQXTWx6S0n--pXpf1BZ52MyViou0wRVQCk4kIrYL7a~r5-gljlTZ~7aD01Tr9Kjg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                color: Colors.black,
                                size: 25),
                            SizedBox(width: 10),
                            Text("Bachelor of Architecture",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Lato',
                                    fontSize: 18.0))
                          ],
                        ),
                        Radio(
                            value: 2,
                            groupValue: group,
                            onChanged: (val) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CollegeListPage()));
                              setState(() {
                                group = val!;
                              });
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                                NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/3988/fab5/3efe7b739c5aadd6f26ca55035d668db?Expires=1684713600&Signature=D4l09kAvbYqwISJg8UGbh7fFCacYYfPrUn5Td2IDD6xbmDgOIF9T9K7ZbZ01n9V44WsfQXLhOlfvwyJHdtJOLW4D1hB3e2W~iXfXPgYwYfxrw2HQsT~IpWajVPx40Zw5McCLzD8z9sxdOUwGTqd73V~qOWdlHWogSVyc253kcm6F18A8NS8KjJbxwzSem1csy8U8TWbS6RdFwvcTRq--Vxw~MegkZnCzPNZim5ngphz0F4mY1-1ciG0JbP9HGqJ0gQG8woZv-n50wcjK-FCnLiJnG-fJepFraS9j2k6rISglaEl9lwvg94ykyGaZI3paAMw8AsHW4ifr6Mk~qJxO7Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                color: Colors.black,
                                size: 25),
                            SizedBox(width: 10),
                            Text("Pharmacy",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Lato',
                                    fontSize: 18.0))
                          ],
                        ),
                        Radio(
                            value: 3,
                            groupValue: group,
                            onChanged: (val) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CollegeListPage()));
                              setState(() {
                                group = val!;
                              });
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                                NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/814e/cc4c/25e5e33138bc4749b8c18a56e96b6514?Expires=1684713600&Signature=BHSEIqzkciQI7ABtIdwO0wPVqd2VJpPsBfOsLrRHlnFKlNxywpynsCsjNa7C~Ru-IwgbQS1LVg9cLZwGm4irXCzWqoUJLLRtRzlhIOr6KhzkC7ReL9A67oX8bh7pnV7HiaTcQKfqx123xDx9rqhszNpSHlIktJRYwgZWMeRVSV425QDYjmSJGDOUf5ykU0X9fyAyX3GUqm6DT3MmRB~RwOl4vvfSc-Vdwe1RnLoBrpEtmUMhU~dkVMTQjmmxCDW6LO-~NVUZLUy-8HpRqi2nr75zi9UJZcy46CDdOoRv70LYqI8QNScM0qlKBTQN-O6MFiEyKkIb1zOIlnMOjkHDqA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                color: Colors.black,
                                size: 25),
                            SizedBox(width: 10),
                            Text("Law",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Lato',
                                    fontSize: 18.0))
                          ],
                        ),
                        Radio(
                            value: 4,
                            groupValue: group,
                            onChanged: (val) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CollegeListPage()));
                              setState(() {
                                group = val!;
                              });
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                                NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/1d3b/d7c5/9bbdcbd0db8e8643db1f7bcca7473dd3?Expires=1684713600&Signature=gbtyBi2KN8-Vz5X28oGuzc55kh-Dvnq4A3FZUzw5~0SZZ1xF3aPYWtdgClg5DKzrI9v89AG8~swmdt4q6~mxtpPMayJdWlK68rUHs1fI8H0oZakoZnen~ygMc5tnTAm5ZoUzME5hbWOJO-mpoWCUSCKogCyL~P9crK9VM2ZRfby92exWHApda9w2vm1pFGSO0qv3ZLWg-jwi0LdjkEMVL8YbUhJk1BwC~DQQu5KcaaSd-GVnozWMw7-Aar4KMVlq~rSCDNnoX1USOUaxw-1gBwLJP4AGg0AeZwaIhTZdhUcWkAaS~vDugrP3dRSLyzPrDo-pd5I-x0kWWycXBBp5SA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                                color: Colors.black,
                                size: 25),
                            SizedBox(width: 10),
                            Text("Management",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Lato',
                                    fontSize: 18.0))
                          ],
                        ),
                        Radio(
                            value: 5,
                            groupValue: group,
                            onChanged: (val) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CollegeListPage()));
                              setState(() {
                                group = val!;
                              });
                            }),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
