import 'package:flutter/material.dart';

class Designercard2 extends StatelessWidget {
  const Designercard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          
          SizedBox(
            height: 29,
            child: Row(
              children: [
                Text(
                  'Similar designers',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: 'Alexandria',
                    color: Color(0xFF272727),
                  ),
                ),

                SizedBox(width: 5),

                Image.asset(
                  'images/icon4.png',
                  width: 20,
                  height: 20,
                ),

                Spacer(),

                Text(
                  'View All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color(0xFF1D61E7),
                  ),
                ),

                SizedBox(width: 5),

                Image.asset(
                  'images/arrow.png',
                  width: 9.49,
                  height: 8,
                ),
              ],
            ),
          ),

          
          SizedBox(height: 8),

          Container(
            width: 298.5,
            height: 0.5,
            margin: EdgeInsets.only(left: 36.5),
            color: Color(0xFFEDEDED),
          ),
        ],
      ),
    );
  }
}

 
