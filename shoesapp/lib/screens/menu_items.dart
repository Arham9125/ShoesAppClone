import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesapp/utils/intro_card.dart';
import 'package:shoesapp/utils/text_widg.dart';

import '../utils/tabs_card.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(

        backgroundColor: Color.fromRGBO(0, 124, 198, 30),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 124, 198, 30),
          centerTitle: false,
          title: MyText(mytext: "Shoetique", fontsize: 25),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 13),
              child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(0, 124, 198, 30),
                        width: 1,
                      ),
                      color: Color.fromARGB(246, 46, 146, 238),
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.search,
                    size: 40,
                  )),
            )
          ],
        ),

      body: SafeArea(
          child: Container(
            child: Column(
              children: [

                //main card 
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
                  child: IntroCard(),
                ),
    
                //image  function which is not in use//
    
                Image.asset(
                  "asset/Frame 2.png",
                ),
    
                //tabs/
    
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                   color: Color.fromRGBO(11, 98, 195, 70),
                   border: Border.all(color: Colors.blue.shade400),
                 ),

                 
                 //tabbar names..//
                  child: TabBar(
                    labelColor: Colors.grey.shade400,
                    
                    labelStyle: GoogleFonts.rubik(fontWeight: FontWeight.w800, fontSize: 17),
                    
                    tabs: [
                    
                    Tab(
                      text: "All",
                    ),
                    
                    Tab(
                      text: "Boot"
                    ),
                    
                    Tab(
                      text: "Canvas"
                    ),
                    Tab(
                      text: "Outdoor",
                    )
                  ]),
                ),
              ),
SizedBox(height: 9,),
              //tabbar pages //

              Expanded(
                child: TabBarView(
                           
                  children: [
              
                  TabCard(),
                   TabCard(),
                    TabCard(),
                     TabCard(),
                ]),
              )
    
                
              ],
            ),
          ),
        ),
      
      )
    );
  }
}