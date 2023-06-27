import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CollegeDetail extends StatefulWidget {
  const CollegeDetail({Key? key}) : super(key: key);

  @override
  State<CollegeDetail> createState() => _CollegeDetailState();
}

class _CollegeDetailState extends State<CollegeDetail> {
  ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: _scrollPosition == 0
            ? AppBar(
                backgroundColor: Color(0xFF0E3C6E),
                elevation: 0,
                toolbarHeight: 70,
                automaticallyImplyLeading: false,
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.arrow_back_rounded,
                                color: Color(0xFF0C55EC), size: 25)),
                      ),
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.bookmark_border, size: 25)),
                    ],
                  ),
                ),
              )
            : AppBar(
                backgroundColor: Color(0xFF0E3C6E),
                elevation: 0,
                toolbarHeight: 70,
                automaticallyImplyLeading: false,
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Text("GHJK Engineering college",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lato',
                          fontSize: 20.0)),
                ),
              ),
        body: SingleChildScrollView(
          controller: _scrollController,
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: size.height * 0.22,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://s3-alpha-sig.figma.com/img/c673/93d5/e4adb4c68863497ee54f4583d1beb0eb?Expires=1684108800&Signature=OovQMxzLa9Hqq8fTZ7lR974pB1KGLDirJ6eFHXBoAsjSf3mDsVY8p0WBOufa~3mSDOA-m8PKwuHXCZFU76MAViZSMZaPcIT53iWzDR53tsqNcsQS4q-1pkS4oyNBP5Kd81bnsuKvRjZh5wbtomfWL0wRtJG6oNWWixZzqg2VvNGs5s9Jd87Fs~Ws76flXqo4EL2ehNebE9pewV9tRahyj44J7PQK1GAlRbhutzTI7O57f63b3xWqOHFSUG~JJcrRDwNUA~Oigx3mjV9Ovc7e6jSZQwkgNVisMe0OIC7TOUv2FlJgiTN-NJz~qFIJaA6vHX2icpLRB1inos0fzkwKsQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width * 0.70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("GHJK Engineering college",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Lato',
                                  fontSize: 20.0)),
                          SizedBox(height: 10),
                          Text(
                              maxLines: 5,
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                              style: TextStyle(
                                  wordSpacing: 3,
                                  color: Color(0xFF8E8E8E),
                                  fontFamily: 'Lato',
                                  fontSize: 12.0)),
                        ],
                      ),
                    ),
                    Container(
                        height: size.height * 0.085,
                        width: size.width * 0.14,
                        decoration: BoxDecoration(
                          color: Color(0xFF27C200),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("4.3",
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFFffffff))),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 28)
                          ],
                        )),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Divider(
                      height: 0.5,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    color: Colors.grey.withOpacity(0.15),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: TabBar(
                          labelPadding: EdgeInsets.only(left: 2),
                          labelStyle: TextStyle(
                              fontSize: 11,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          indicatorColor: Color(0xFF0E3C6E),
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                                width: 5.0, color: Color(0xFF0E3C6E)),
                          ),
                          tabs: [
                            Tab(text: 'About College'),
                            Tab(text: 'Hostel Facility'),
                            Tab(text: 'Q & A'),
                            Tab(text: 'Events')
                          ]),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 12,
                          offset: Offset(0, 7), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Divider(
                      height: 0.5,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                  height: 700,
                  child: TabBarView(
                    children: [
                      AboutCollege(size),
                      HostelFacility(size),
                      Text(textAlign: TextAlign.center, "Q & A"),
                      Text(textAlign: TextAlign.center, "Events"),
                    ],
                  )),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 2),
          decoration: BoxDecoration(
            color: Color(0xFF0E3C6E),
            borderRadius: BorderRadius.circular(10),
          ),
          width: size.width * 0.9,
          height: size.height * 0.065,
          child: Center(
              child: Text("Apply Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato',
                      fontSize: 20.0))),
        ),
      ),
    );
  }

  //ABOUT COLLEGE
  Widget AboutCollege(Size size) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Description",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato',
                      fontSize: 16.0)),
              SizedBox(height: 12),
              Text(
                  maxLines: 10,
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                  style: TextStyle(
                      wordSpacing: 2,
                      color: Color(0xFF969797),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lato',
                      fontSize: 13.0)),
            ],
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Location",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato',
                      fontSize: 16.0)),
              SizedBox(height: 15),
              Container(
                height: size.height * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.figma.com/file/7XaIws0wlTqPMnQDBuj97h/image/3e41aa0dfbb3b39cc5d563bd651d82a319a7a927?fuid=1056804369553678142"))),
              )
            ],
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Student Review",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato',
                      fontSize: 16.0)),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StudentProfile(
                      "https://s3-alpha-sig.figma.com/img/53df/af59/a909fd8e18f4a58a4d6a28250d13bd21?Expires=1684108800&Signature=lafVnXR~~TioBFgIdQ3yeZ570LEtOiLLM9oMSF2Lt4gof33Tw2qLGZKkzpu1PmywgYReY4tXZJNdxBMomv~B-ZTXsPWNLqhThD9q1UtI-ddAE9uIs4tq7fteAmYhOxX8KpV0nRyJ5QHHb2mrI1nV3-nkT8tFXSiwC8S4m1mQYE3XnFvXvF4QtC19xxfcgL8tLggG4SlFXCHYmYDeyhMr6fvlW113k7a5-9kmGqmQGolpHKYszPx3PP7YOCW105FIL4Ok9U2ykvHjUyDZujiEMkscaxcLqtiCF5pK9Mm96aPbVZ6tze~ai4GDic8SkTOOWX0CAqdZKjD3KjekCLYM7Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                  StudentProfile(
                      "https://s3-alpha-sig.figma.com/img/c0b6/6a74/a232179ea4108074c95780de9c186ad1?Expires=1684108800&Signature=H4H4TYl8grXNrhJY~roIpjEBF1V49AKQFfrRNlACIWEW30xNTC9PLApb-BCA5unCGD0Y9L78jdtxKc0BgUOSpQMh3IxCcYmlvjs5WtVaFagDGJTMeZKgrSJOdZJdAFP0WP~cg~isz5BAGihsdyWcrBErxMW8OFe~VOgJo6YbPMmnrS3HqXXrLZ8QmJJYbXbuOBf7OLsd9VLCGiJtePfks9l-~-IEkq2Oft~aTvkuxenv1RWqB4vNIrXB8IYNCHIPs3bpC-Q~tiyVrjzdujD~4sTJbZMTMxFlU-Gb-vg8q7pF3Lj7rXf~R34n4uApQiUVCBizJyu9Gw3gBvpgkUKWbg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                  StudentProfile(
                      "https://s3-alpha-sig.figma.com/img/9871/2c23/288b9b634e055c38e87e32ac3f3978c3?Expires=1684108800&Signature=I-W1rxXH~4Et81P8HGc9CcoJPNiu6gglMfdEf4TLm1fZ0hCKNbi5-DjEIPAq2Atvc~vWZ1hGqjX8C5x2~oy83RArav2W28In59Bw1bmurTdaopH3Tb8uENiXK7X7~ItGdj-pmO98r8cQ1BSJP2XjqjQROEBjKVeEym7rqWziN0SfucblxB91BZr6EeB7e9sYswwLTQTi3Sa7ASuyB4ARfmziltnvAcbopZI6EfBHzNQaLybxg9Q3bZe1Cg569kq0nV9JbOSTUzhJFnMgAzxVr1JuAH6j4GCPlf~x7HFlJnxiLA3Cj3ySTpujwKuXq~wZmUen3JlhsvXboeLsoAmCNg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                  StudentProfile(
                      "https://s3-alpha-sig.figma.com/img/b10f/9b24/3e10e47867be6871d2b4321113c3477e?Expires=1684108800&Signature=i8Z39NQWL2Z9iIv3PvN2okE5s0gO07ZxmpeV4q4XV7Af0xle-OwEQk~Ei3id3-X-kJP21X4X6Kwbdh-IflPRxp73Ju3owFXNsNRQbkl0gHBkRK~PoUiXd5mNwYjYDWby7mH33UVZNFBtKDJ3KeKtlGNmtn8wERdzmj6VX6jLIcYXXIWhuUuDehQU8eAS3kPDmyJ68r1QBOsY8DY66jBFse861s3GQpPa8a24d3DgaUV-V8pTxjN6rTSyss~jIagcaOlr2kThUA-lKNknZfEepWzVkeNO504k5LtiY6Ki3HduY~wsw8ZnNWPotFqdpB2KJKIjNuvoXOqKv-XdzPZxQA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                  Container(
                    height: 55,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFFE7E6E6),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 4.0,
                            color: Color(0xFF000000).withOpacity(0.15))
                      ],
                    ),
                    child: Center(
                        child: Text("+12",
                            style: TextStyle(
                                color: Color(0xFF0E3C6E),
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Lato',
                                fontSize: 14))),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 30),
          Container(
            height: size.height * 0.17,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 4.0,
                      color: Color(0xFF9E9E9E).withOpacity(0.5))
                ]),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Arun Sai",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Lato',
                          fontSize: 16.0)),
                  SizedBox(height: 15),
                  Text(
                      maxLines: 10,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                      style: TextStyle(
                          wordSpacing: 2,
                          color: Color(0xFF8E8E8E),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato',
                          fontSize: 12.0)),
                  SizedBox(height: 10),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.star_rounded, color: Colors.amber),
                        Icon(Icons.star_rounded, color: Colors.amber),
                        Icon(Icons.star_rounded, color: Colors.amber),
                        Icon(Icons.star_rounded, color: Colors.amber),
                        Icon(Icons.star_rounded, color: Colors.amber),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget StudentProfile(String url) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 4.0,
                color: Color(0xFF000000).withOpacity(0.15))
          ],
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
    );
  }

  //HOSTEL FACILITY
  Widget HostelFacility(Size size) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: Column(
        children: [
          Container(
              height: size.height * 0.04,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                      color: Color(0xFF0E3C6E),
                      border: Border.all(color: Colors.black.withOpacity(0.29)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        ImageIcon(AssetImage("assets/bed.png"),
                            color: Colors.white, size: 25),
                        SizedBox(width: 5),
                        Text("1",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Lato'))
                      ],
                    ),
                  ),
                  categoryBed("2"),
                  categoryBed("3"),
                  categoryBed("4"),
                ],
              )),
          SizedBox(height: 25),
          scrollcard(size),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("GHJK Engineering College",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato',
                        fontSize: 18.0)),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 12, 10, 0),
            child: Row(
              children: [
                ImageIcon(AssetImage("assets/location.png"),
                    color: Colors.blueAccent, size: 18),
                SizedBox(width: 5),
                Text("Lorem ipsum dolor sit amet, consectetur ",
                    style: TextStyle(
                        wordSpacing: 3.0,
                        color: Color(0xFF4A4A4A),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Lato',
                        fontSize: 12.0)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
            child: Text(
                maxLines: 10,
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                style: TextStyle(
                    wordSpacing: 4,
                    color: Color(0xFF969797),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Lato',
                    fontSize: 13.0)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Facilities",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato',
                        fontSize: 18.0)),
                SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      child: Image(image: AssetImage("assets/university.png")),
                    ),
                    SizedBox(width: 10),
                    Text("College in 400mtrs",
                        style: TextStyle(
                            wordSpacing: 3.0,
                            color: Color(0xFF4A4A4A),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Lato',
                            fontSize: 14.0)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      child: Image(image: AssetImage("assets/bathroom.png")),
                    ),
                    SizedBox(width: 10),
                    Text("Bathrooms : 2",
                        style: TextStyle(
                            wordSpacing: 3.0,
                            color: Color(0xFF4A4A4A),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Lato',
                            fontSize: 14.0)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget categoryBed(String number) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        border: Border.all(color: Color(0xFF0E3C6E)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          ImageIcon(AssetImage("assets/bed.png"),
              color: Color(0xFF0E3C6E), size: 25),
          SizedBox(width: 5),
          Text(number,
              style: TextStyle(
                  fontSize: 15, color: Color(0xFF0E3C6E), fontFamily: 'Lato'))
        ],
      ),
    );
  }

  List imageLink = [
    "https://s3-alpha-sig.figma.com/img/aea3/feec/99a372797165ae736d5a1dd6e0804b3b?Expires=1684108800&Signature=ewFAJozHzZqUowVFXQly4wU5xzpV2C0baq~PAnu0h8BqFejzBqfE3ta4pP9BnyS4xdj0yMwkQ05SL8y-lq-mGL1R9Cb6DXT8cChmt~3uDqU77wks4869knVqj4T3FUQpLJoUi~sVziGjxrnJ2GBIHNFD461cfN-Kn40uSQTwqWPyijYw3U~S5WLNQmzk5Ldjw-GgCsCQjetC4636QXJnU2zGYWvM3T1Lpp6dr7z0QlKBZqTkPNBD04hCa6iPpqSw05xXoXlE~JIarto-RyEXqbThqR6TBGy3bOVec8tCkX0QByY9WGVirHQ9ZOfvnMwazKevHjmSjUOncxzYxOj02g__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/31e5/815b/906b3ed8259ec6df82282d3bb91d4c84?Expires=1684108800&Signature=fVSh8HW571glmS3l5786YxhHQp0~KXWVrF9T5yAayhQ4gDmD0MSTEtBQoAn~uy7TXNW~UK2DHY5iDBzRjyLStBZMemZukFj8mVBJ5KjFnk2-hwNZzyi50mEhq~opx7~EhGoGypFWpA820voKT5fpVQs7tdNZtTR39P4z~HuXcUWcxNYUL83ntw2jZ9iMDD7QQwT4nYzAF4xqTyl5WvcS3RzFXER9IFrOqmHPC3T3kdno3WJeqIfTKCDJCqLR~xcjnyHhDzM7jeIu0YbWY4E08tV0rFQS~JZ0enmuHAk49u2SzQfdgMrTNFgfX2WAZyfEMhyfvfmnwxqRlNwEMzu9eQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/5cb5/3c2f/e693c213730dcdcf0e7fb6af8dd58fe0?Expires=1684108800&Signature=Q-9yKBtoFTnCbMM44HTjq7rAS7oo1DOBa4Lf0Q4EjHKOQ4VFbSFo35D3~A6iI5-pEV5daeRzM9qaxZikMyUYAHsynq7zvMyy4GBuFpaNO8eMVafQIJ1tReq-01FZWwMBf3TKA4BFoFLqA3CnH202-A9Yp68gqV6VGVae0xPmv-xRKo3qb-Ax-0roQOQDwo0VbNcVc8EZyB001IaUGqwpZMvNvhp6sktutQ2lt3sqJMPlHfhLfhfH9HKuBrw5K0Uxt3AGkVmDXzCRoMhnAqSulfQQWLXrrWODp5xt8NkUtmnFz1jPY-HnQCF5Qd~cQHDDsZu~Z80kw-t54RW5OXBryA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/aea3/feec/99a372797165ae736d5a1dd6e0804b3b?Expires=1684108800&Signature=ewFAJozHzZqUowVFXQly4wU5xzpV2C0baq~PAnu0h8BqFejzBqfE3ta4pP9BnyS4xdj0yMwkQ05SL8y-lq-mGL1R9Cb6DXT8cChmt~3uDqU77wks4869knVqj4T3FUQpLJoUi~sVziGjxrnJ2GBIHNFD461cfN-Kn40uSQTwqWPyijYw3U~S5WLNQmzk5Ldjw-GgCsCQjetC4636QXJnU2zGYWvM3T1Lpp6dr7z0QlKBZqTkPNBD04hCa6iPpqSw05xXoXlE~JIarto-RyEXqbThqR6TBGy3bOVec8tCkX0QByY9WGVirHQ9ZOfvnMwazKevHjmSjUOncxzYxOj02g__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/31e5/815b/906b3ed8259ec6df82282d3bb91d4c84?Expires=1684108800&Signature=fVSh8HW571glmS3l5786YxhHQp0~KXWVrF9T5yAayhQ4gDmD0MSTEtBQoAn~uy7TXNW~UK2DHY5iDBzRjyLStBZMemZukFj8mVBJ5KjFnk2-hwNZzyi50mEhq~opx7~EhGoGypFWpA820voKT5fpVQs7tdNZtTR39P4z~HuXcUWcxNYUL83ntw2jZ9iMDD7QQwT4nYzAF4xqTyl5WvcS3RzFXER9IFrOqmHPC3T3kdno3WJeqIfTKCDJCqLR~xcjnyHhDzM7jeIu0YbWY4E08tV0rFQS~JZ0enmuHAk49u2SzQfdgMrTNFgfX2WAZyfEMhyfvfmnwxqRlNwEMzu9eQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "https://s3-alpha-sig.figma.com/img/5cb5/3c2f/e693c213730dcdcf0e7fb6af8dd58fe0?Expires=1684108800&Signature=Q-9yKBtoFTnCbMM44HTjq7rAS7oo1DOBa4Lf0Q4EjHKOQ4VFbSFo35D3~A6iI5-pEV5daeRzM9qaxZikMyUYAHsynq7zvMyy4GBuFpaNO8eMVafQIJ1tReq-01FZWwMBf3TKA4BFoFLqA3CnH202-A9Yp68gqV6VGVae0xPmv-xRKo3qb-Ax-0roQOQDwo0VbNcVc8EZyB001IaUGqwpZMvNvhp6sktutQ2lt3sqJMPlHfhLfhfH9HKuBrw5K0Uxt3AGkVmDXzCRoMhnAqSulfQQWLXrrWODp5xt8NkUtmnFz1jPY-HnQCF5Qd~cQHDDsZu~Z80kw-t54RW5OXBryA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
  ];

  int active = 0;
  Widget scrollcard(Size size) {
    return Center(
      child: Container(
        width: size.width,
        height: size.height * 0.20,
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: imageLink.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(imageLink[itemIndex]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              options: CarouselOptions(
                height: 130,
                aspectRatio: 1 / 1,
                viewportFraction: 0.49,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    active = index;
                  });
                },
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 5),
            DotsIndicator(
              dotsCount: imageLink.length,
              position: active,
            )
          ],
        ),
      ),
    );
  }
}
