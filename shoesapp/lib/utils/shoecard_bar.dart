import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShoeWidg extends StatelessWidget {
 String mainimage;
  String shoename;
  String shoetype;
  String shoeprice;

  ShoeWidg({required this.mainimage, required this.shoename, required this.shoetype, required this.shoeprice});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blue.shade200, width: 1)
        ),
        child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Color(0xff2F7BCF),
              child: Column(
                children: [
                  // name//
      
               //two icons//
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Image.asset("asset/logo.png", color: Colors.white,),
                      ),
      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite_outline, size: 30, color: Colors.white,),
                      )
                      
                    ],
                  ),
      
                  // image//
      
                  Image.asset(mainimage),
      
                  //shoename//
      
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Text(shoename, style: TextStyle( color: Colors.grey.shade500, fontSize: 20),),
                  ),
      
                  //shoe type and price in row//
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                         padding: const EdgeInsets.only(left: 25),
                        child: Text(shoetype, style: TextStyle( color: Colors.white, fontSize: 25, fontWeight: FontWeight.w800),),
                      ),
                      
                         Text(shoeprice, style: TextStyle( color: Color(0xff12D9F4), fontSize: 30, fontWeight: FontWeight.w800),),
                    ],
                  )
                ],
              ) ,
            ),
      ),
    );
      
      
      
      
      
      
  }
}