import 'package:flutter/material.dart';
import 'designercard.dart';

class DesignersGrid extends StatelessWidget {
  final List<Map<String, dynamic>> designers;

  const DesignersGrid({super.key, required this.designers});

  @override
  Widget build(BuildContext context) {
    const double cardHeight = 221;
    const int crossAxisCount = 2;
    const double spacing = 16;

    final int rowCount = (designers.length / crossAxisCount).ceil();
    final double gridHeight =
        (rowCount * cardHeight) + ((rowCount - 1) * spacing);

    return SizedBox(
      height: gridHeight,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: designers.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 12,
          mainAxisSpacing: spacing,
          childAspectRatio: 0.72,
        ),
        itemBuilder: (context, index) {
          final designer = designers[index];
          return DesignerCard(
            imagePath: designer['image'],
            rating: designer['rating'],
            name: designer['name'],
            experience: designer['experience'],
            specialization: designer['specialization'],
            isFavorite: designer['isFavorite'],
          );
        },
      ),
    );
  }
}
