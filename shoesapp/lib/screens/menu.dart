import 'package:flutter/material.dart';
import 'package:shoesapp/screens/menu_items.dart';
import 'package:shoesapp/utils/intro_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesapp/utils/tabs_card.dart';
import 'package:shoesapp/utils/text_widg.dart';

class MenuScreen extends StatefulWidget {
  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final mystyle = GoogleFonts.rubik;

  int selectedindex = 0;

  void selected(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  //list of pages//

  final List<Widget> _pages = [
   //First Screen "Main"
    Center(child: MyText(mytext: "Main", fontsize: 50)),

    //Second Favourite 
    Center(child: MyText(mytext: "Favorite", fontsize: 50)),

    //Third Menu
  MenuItems(),

  //Fourth Cart
   Center(child: MyText(mytext: "Cart", fontsize: 50)),

   //Fifth settings
    Center(child: MyText(mytext: "Settings", fontsize: 50)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: selected,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          backgroundColor: Color.fromRGBO(11, 98, 180, 30),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopify_sharp),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "",
            ),
          ]),
      backgroundColor: Color.fromRGBO(0, 124, 198, 30),
    
    
    body: _pages[selectedindex],
    
    );
  }
}
