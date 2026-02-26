import 'package:flutter/material.dart';

class Search_Bar extends StatelessWidget {
  const Search_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
      child: Container(
        width: 327,
        height: 48,
        decoration: BoxDecoration(
           boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 6,
          offset: Offset(0, 3), 
        ),
      ],
          
          borderRadius: BorderRadius.circular(24),
          
        
        ),
        child: Container(
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
        
    
       
        child: Row(
          children: [
            SizedBox(width: 20),
           Container(
               width: 17.44,
               height: 17.44,
               child: Image.asset('images/search.png'),
           ),

          

           Expanded(
             child: Padding(
    padding: const EdgeInsets.only(left: 18),
          child: Text(
            'search for designers,categories',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'Alexandrai',
              color: Color(0x802F3542),
            ),
            textAlign: TextAlign.start, 
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            softWrap: false,
          ),
             )
        ),
          ]
        
        )
      ),
      )
    );
  }
  }
