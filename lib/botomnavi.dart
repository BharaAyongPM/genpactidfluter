

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:topup/main.dart';
import 'package:topup/pages/about.dart';
import 'package:topup/pages/lapor.dart';
//import 'package:topup/pages/edit_product_page.dart';
import 'package:topup/pages/home_page.dart';

//import '../providers/products.dart';
//import '../providers/auth.dart';


class BottomNavi extends StatefulWidget {
  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentIndex = 0;
  final List<Widget> body =[
    HomePage(),
    lapor(),
    about()
  ];

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue,),
            label:'Home',
            activeIcon: Icon(Icons.home_outlined,color: Colors.amberAccent,)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue,),
            label:'Home',
            activeIcon: Icon(Icons.home_outlined,color: Colors.amberAccent,)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue,),
            label:'Home',
            activeIcon: Icon(Icons.home_outlined,color: Colors.amberAccent,)
          ),
        ],),
    );
  }

  void ontap(int index){
    setState(() {
      currentIndex = index;
    });
  }
}
