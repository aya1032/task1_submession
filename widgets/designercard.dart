import 'package:flutter/material.dart';

class DesignerCard extends StatelessWidget {
  final String imagePath;
  final double rating;
  final String name;
  final String experience;
  final String specialization;
  final bool isFavorite;

  const DesignerCard({
    super.key,
    required this.imagePath,
    required this.rating,
    required this.name,
    required this.experience,
    required this.specialization,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 221, 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: 123, 
                  fit: BoxFit.cover,
                ),
              ),

              
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    children: [
                      Text(rating.toStringAsFixed(1), style: const TextStyle(fontSize: 12)),
                      const SizedBox(width: 4),
                      const Icon(Icons.star, size: 12, color: Colors.amber),
                    ],
                  ),
                ),
              ),

              // Favorite
              Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  size: 20,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

         
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Image.asset('images/icon3.png',width: 14,height: 14,   color: const Color(0xFFC175F5),),
                    const SizedBox(width: 4),
                    Text(
                      experience,
                      style: const TextStyle(fontSize: 12, color: Color(0xff7E8392)),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xffF6F6F6),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    specialization,
                    style: const TextStyle(fontSize: 12, color: Color(0xff8A8E9B)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
