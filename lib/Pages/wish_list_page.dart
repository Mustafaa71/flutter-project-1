import 'package:flutter/material.dart';

import '../components/brand_card.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Wish List',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(13.0),
              child: const BrandCards(
                brandName: "T-shirt",
                categoryName: "Boss",
                image: AssetImage('images/boss-tsh.jpeg'),
                starC1: Colors.white,
                starC2: Colors.white,
                starC3: Colors.white,
                starC4: Colors.white,
                ratingNumber: '4.7',
              ),
            ),
            Container(
              margin: const EdgeInsets.all(13.0),
              child: const BrandCards(
                brandName: "T-shirt",
                categoryName: "Boss",
                image: AssetImage('images/ck-shirt.webp'),
                starC1: Colors.white,
                starC2: Colors.white,
                starC3: Colors.white,
                starC4: Colors.white,
                ratingNumber: '4.7',
              ),
            ),
            Container(
              margin: const EdgeInsets.all(13.0),
              child: const BrandCards(
                brandName: "T-shirt",
                categoryName: "Boss",
                image: AssetImage('images/NIKE3.png'),
                starC1: Colors.white,
                starC2: Colors.white,
                starC3: Colors.white,
                starC4: Colors.white,
                ratingNumber: '4.7',
              ),
            ),
            const SizedBox(height: 88.0),
            InkWell(
              onTap: (() {}),
              child: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff23daa3),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const Text(
                  'Add items to cart',
                  style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
