import 'package:cat_task1/widgets/designedcard3.dart';
import 'package:flutter/material.dart';
import 'package:cat_task1/widgets/designercard2.dart';

import 'package:cat_task1/widgets/header_widget.dart';
import 'package:cat_task1/widgets/search_bar.dart';
import 'package:cat_task1/widgets/cateories.dart';
import 'package:cat_task1/widgets/frame.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> designers = [
      {
        'image': 'images/product1.png',
        'rating': 4.7,
        'name': 'Aya Ahmed',
        'experience': 'Exp: 3 years',
        'specialization': 'Interior Design',
        'isFavorite': false,
      },
      {
        'image': 'images/product2.png',
        'rating': 4.8,
        'name': 'Aya Ahmed',
        'experience': 'Exp: 3 years',
        'specialization': 'Interior Design',
        'isFavorite': true,
      },
      {
        'image': 'images/product3.png',
        'rating': 4.5,
        'name': 'Aya Ahmed',
        'experience': 'Exp: 3 years',
        'specialization': 'Interior Design',
        'isFavorite': true,
      },
      {
        'image': 'images/product4.png',
        'rating': 4.1,
        'name': 'Aya Ahmed',
        'experience': 'Exp: 3 years',
        'specialization': 'Interior Design',
        'isFavorite': false,
      },
      {
        'image': 'images/product5.png',
        'rating': 4.5,
        'name': 'Aya Ahmed',
        'experience': 'Exp: 3 years',
        'specialization': 'Interior Design',
        'isFavorite': false,
      },
      {
        'image': 'images/product6.png',
        'rating': 4.1,
        'name': 'Aya Ahmed',
        'experience': 'Exp: 3 years',
        'specialization': 'Interior Design',
        'isFavorite': true,
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [

            const HeaderWidget(),
            const SizedBox(height: 20),

            const Search_Bar(),
            const SizedBox(height: 20),

            const Categories(),
            const SizedBox(height: 20),

            const Frame(),
            const SizedBox(height: 20),

           
            DesignersGrid(designers: designers),

            const SizedBox(height: 30),

            const Designercard2(),

            const SizedBox(height: 30),

            
            DesignersGrid(designers: designers),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
