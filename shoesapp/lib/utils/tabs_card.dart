import 'package:flutter/material.dart';
import 'package:shoesapp/utils/shoecard_bar.dart';

class TabCard extends StatelessWidget {


  // List itemsofcard = [

  
  // ];
  
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        
        childAspectRatio: 1/1.5,
        
        crossAxisCount: 2
      ), itemBuilder: (context, index) {

       return ShoeWidg(mainimage: "asset/shoe2.png", 
       shoename: "Jugging shoe" , shoetype: "Canva", shoeprice: "35\$");
      
      //051111124111124
      
      }
    );
  }
}
