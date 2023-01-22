import 'package:flutter/material.dart';

class BrandCards extends StatelessWidget {
  final ImageProvider image;
  final String brandName;
  final String categoryName;
  final String ratingNumber;
  final Color starC1;
  final Color starC2;
  final Color starC3;
  final Color starC4;

  const BrandCards(
      {super.key,
      required this.brandName,
      required this.categoryName,
      required this.image,
      required this.starC1,
      required this.starC2,
      required this.starC3,
      required this.starC4,
      required this.ratingNumber});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: const Color(0xfff9f9fa)),
        child: Row(
          children: [
            CircleAvatar(
              radius: 45.0,
              backgroundImage: image,
            ),
            const SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Text(
                      brandName,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(width: 28.0),
                    const Icon(
                      Icons.favorite,
                      size: 30.0,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(categoryName),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.star, color: starC1),
                    Icon(Icons.star, color: starC2),
                    Icon(Icons.star, color: starC3),
                    Icon(Icons.star, color: starC4),
                    const Icon(Icons.star, color: Color(0xffbbbbbc)),
                    const SizedBox(width: 4),
                    Text(
                      ratingNumber,
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xffbbbbbc)),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
