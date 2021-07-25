import 'package:flutter/material.dart';
import 'package:kurcalama/firstpage.dart';
import 'package:kurcalama/home.dart';
import 'package:kurcalama/secondpage.dart';
import 'package:kurcalama/thirdpage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'sizeconfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    homepage(),
    firstpage(),
    secondpage(),
    thirdpage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white60,
        onPressed: () {
          print(SizeConfig.screenWidth);
        },
        tooltip: 'Increment',
        child: SvgPicture.asset('assets/images/barcode-scanner.svg',
            height: 35, width: 45, color: Colors.black),
      ),

      ////////////////////  APP BAR  ///////////////////////
      appBar: buildAppBar(),
      ////////////////////  APP BAR  //////////////////////
      //////////////////// BOTTOM NAVİGATİON BAR ////////////////
      bottomNavigationBar: buildBottomNavBar(),

      /*BottomNavigationBar(
        unselectedItemColor: Colors.grey.shade800,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white70,
        items: bottomitems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),*/
      //////////////////// BOTTOM NAVİGATİON BAR ////////////////
      ////////////////////       BODY  ///////////////////////////////////

      body: _widgetOptions.elementAt(_selectedIndex),

      // child: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  BottomNavyBar buildBottomNavBar() {
    return BottomNavyBar(
      backgroundColor: Colors.grey.shade300,
      selectedIndex: _selectedIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _selectedIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          activeColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text(
            'Users',
            style: TextStyle(color: Colors.black),
          ),
          activeColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text(
            'Messages test for mes teset test test ',
            style: TextStyle(color: Colors.black),
          ),
          activeColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.settings),
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          activeColor: Colors.black,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/basket.svg',
              height: 35,
              width: 35,
              color: Colors.black,
            ))
      ],
      centerTitle: true,
      title: Text(
        "foodlapp",
        style: TextStyle(
            fontFamily: 'Satisfy',
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade900),
      ),
    );
  }
}
