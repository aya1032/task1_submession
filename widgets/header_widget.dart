import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        child: Column(
          children: [
           
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Text(
                    '9:41',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.signal_cellular_4_bar, size: 16),
                      SizedBox(width: 4),
                      Icon(Icons.wifi, size: 16),
                      SizedBox(width: 4),
                      Icon(Icons.battery_full, size: 16),
                    ],
                  ),
                ],
              ),
            ),

           // SizedBox(height: 2),

           
            Container(
              width: 375, 
              height: 50,
              child: Padding(
                padding: EdgeInsets.only(right: 16, left: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   
                    Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                        Text(
                          'Good Afternoon,',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            height: 1.0,
                          ),
                        ),
                        SizedBox(width: 4),
                         Container(
                           width: 20,
                           height: 20,
                           child: Image.asset('images/image.png'),
                                   ),
                                ],
                               ),
                      

                        
                        SizedBox(height: 2),
                        
                        Text(
                          'Mustafa Magdy',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            height: 1.0,
                          ),
                        ),
                        
                      ]
                    )
                      ],
                    ),

                    

                   
                  
                ),
              ),
            
          ],
        ),
      );
  }
}
