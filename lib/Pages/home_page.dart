import 'package:flutter/material.dart';
import 'package:shopping/Pages/cart_page.dart';
import 'package:shopping/Pages/product_details.dart';
import 'package:shopping/Pages/setting_page.dart';
import 'package:shopping/Pages/wish_list_page.dart';

import '../components/ads_card.dart';
import '../components/app_section.dart';
import '../components/brand_card.dart';
import '../components/category_section.dart';

class GoodsPage extends StatefulWidget {
  const GoodsPage({super.key});

  @override
  State<GoodsPage> createState() => _GoodsPageState();
}

class _GoodsPageState extends State<GoodsPage> {
  final int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          'Popular this week',
          style:
              TextStyle(fontFamily: 'Poppins', fontSize: 25.0, fontWeight: FontWeight.bold, color: Color(0xff000000)),
        ),
        actions: [
          Row(
            children: [
              AppBarButton(
                onPress: (() {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => const SettingPage())));
                }),
                icon: Icons.person,
              ),
              AppBarButton(
                icon: Icons.category,
                onPress: (() {}),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 175,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      BrandCards(
                        brandName: 'Chanel',
                        categoryName: 'Fashion',
                        image: AssetImage('images/chan.png'),
                        starC1: Color(0xffffbea6),
                        starC2: Color(0xffffbea6),
                        starC3: Color(0xffffbea6),
                        starC4: Color(0xffffbea6),
                        ratingNumber: '4.7',
                      ),
                      BrandCards(
                        brandName: 'Calvin Klein',
                        categoryName: 'Fashion',
                        image: AssetImage('images/ck.png'),
                        starC1: Color(0xffffbea6),
                        starC2: Color(0xffbbbbbc),
                        starC3: Color(0xffbbbbbc),
                        starC4: Color(0xffbbbbbc),
                        ratingNumber: '1.5',
                      ),
                      BrandCards(
                        brandName: 'Nike',
                        categoryName: 'Sport',
                        image: AssetImage('images/nike.png'),
                        starC1: Color(0xffffbea6),
                        starC2: Color(0xffffbea6),
                        starC3: Color(0xffbbbbbc),
                        starC4: Color(0xffbbbbbc),
                        ratingNumber: '2.7',
                      ),
                      BrandCards(
                        brandName: 'Tommy Hilfiger',
                        categoryName: 'Fashion',
                        image: AssetImage('images/tommyh.jpeg'),
                        starC1: Color(0xffffbea6),
                        starC2: Color(0xffffbea6),
                        starC3: Color(0xffffbea6),
                        starC4: Color(0xffbbbbbc),
                        ratingNumber: '3.1',
                      ),
                      BrandCards(
                        image: AssetImage('images/eagle.jpeg'),
                        brandName: 'American Eagle',
                        categoryName: 'Fashion',
                        starC1: Color(0xffffbea6),
                        starC2: Color(0xffffbea6),
                        starC3: Color(0xffffbea6),
                        starC4: Color(0xffffbea6),
                        ratingNumber: '4.0',
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        child: const Text(
                          'Shop By Category',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000)),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 20.0),
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          color: Color(0xffffc1aa),
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 140.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => const ProductDetails())));
                        },
                        child: const CategoryIcons(
                          icon: Icons.boy_outlined,
                          iconName: "Men's\nWear",
                        ),
                      ),
                      const CategoryIcons(
                        icon: Icons.woman,
                        iconName: "Women's\nWear",
                      ),
                      const CategoryIcons(
                        icon: Icons.snowshoeing_rounded,
                        iconName: "Foot\nWear",
                      ),
                      const CategoryIcons(
                        icon: Icons.home,
                        iconName: "Home\nApplication",
                      ),
                      const CategoryIcons(
                        icon: Icons.masks,
                        iconName: "Skin\nCare",
                      ),
                    ],
                  ),
                ),
                const AdsCard(),
                const Divider(),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        child: const Text(
                          'New On SnapUp',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000)),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 20.0),
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          color: Color(0xffffc1aa),
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const BrandCards(
                  brandName: 'Guess                                ',
                  categoryName: 'Fashion',
                  image: AssetImage('images/last-guess.png'),
                  starC1: Color(0xffffbea6),
                  starC2: Color(0xffffbea6),
                  starC3: Color(0xffffbea6),
                  starC4: Color(0xffbbbbbc),
                  ratingNumber: '2.9',
                ),
                const BrandCards(
                  brandName: 'Guess                                ',
                  categoryName: 'Fashion',
                  image: AssetImage('images/fred perry.png'),
                  starC1: Color(0xffffbea6),
                  starC2: Color(0xffffbea6),
                  starC3: Color(0xffffbea6),
                  starC4: Color(0xffffbea6),
                  ratingNumber: '4.0',
                ),
                const BrandCards(
                  brandName: 'Boss                                     ',
                  categoryName: 'Fashion',
                  image: AssetImage('images/Boss.jpeg'),
                  starC1: Color(0xffffbea6),
                  starC2: Color(0xffbbbbbc),
                  starC3: Color(0xffbbbbbc),
                  starC4: Color(0xffbbbbbc),
                  ratingNumber: '1.0',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wish List'),
        ],
        onTap: ((index) {
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const CartPage())));
          } else if (index == 2) {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const WishList())));
          }
        }),
      ),
    );
  }
}
