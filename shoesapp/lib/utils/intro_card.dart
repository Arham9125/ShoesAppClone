
import 'package:flutter/material.dart';
import 'package:shoesapp/utils/text_widg.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue, width: 3)),
          height: 290,
          child: Card(
            shadowColor: Colors.blue.shade900,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromRGBO(0, 124, 198, 20),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                     MyText(mytext: "Dynamic Fit", fontsize: 25)
                    
                    ,
                    Icon(Icons.favorite_border_outlined, color: Colors.white, size: 32,)
                    ],
                  ),
                ),
        
                //image//
        
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Image(
                    
                    image: AssetImage("asset/shoe1.png"))),
        
                  Align(
                  
                  alignment: Alignment(0.8,0.6),
                  child: MyText(mytext: "30 % OFF", fontsize: 30, )),
              ],
            ),
          ),
        
      
    );
  }
}