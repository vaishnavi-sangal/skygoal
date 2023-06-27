import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'View/account_page.dart';
import 'View/bookmark_page.dart';
import 'View/saved_page.dart';
import 'View/search_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF0E3C6E),
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentindex = 0;

  final screens = [SearchPage(), BookmarkPage(), SavedPage(), AccountPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        backgroundColor: Color(0xFF0E3C6E),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        elevation: 30,
        unselectedItemColor: Color(0xFFBBBBBB),
        selectedItemColor: Color(0xFFFFFFFF),
        onTap: (index) => setState(() => currentindex = index),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/bhome.png"),
                color: Colors.white, size: 25),
            label: "Search",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/bbookmark.png"),
                  color: Colors.white, size: 25),
              label: "Bookmark"),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/bsaved.png"),
                color: Colors.white, size: 25),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/buser.png"),
                color: Colors.white, size: 25),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
