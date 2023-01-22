import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../components/cart_content.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const CartCard(
              brandCartName: 'American Eagle',
              size: 'M',
              quantity: '1',
              price: '20',
              clothe: AssetImage("images/clothe-1.jpeg"),
            ),
            const CartCard(
              brandCartName: 'Tommy Hilfiger',
              size: 'M',
              quantity: '1',
              price: '40',
              clothe: AssetImage("images/clothe-2.webp"),
            ),
            const Divider(
              thickness: 2.0,
            ),
            const Expanded(
              child: GgCart(
                leftTitle: 'Subtotal',
                rightValue: '60.0',
              ),
            ),
            const Expanded(
              child: GgCart(
                leftTitle: 'Discount',
                rightValue: '1.0',
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: (() {
                  Alert(context: context, title: "Buying succeeded", desc: "Thank you for shopping from SnapUp").show();
                }),
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xff23daa3),
                  ),
                  child: const Center(
                      child: Text(
                    'Proceed',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GgCart extends StatelessWidget {
  final String leftTitle;
  final String rightValue;
  const GgCart({
    Key? key,
    required this.leftTitle,
    required this.rightValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Row(
        children: [
          Text(
            leftTitle,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.0,
            ),
          ),
          const Spacer(),
          Text(
            '\$$rightValue',
            style: const TextStyle(fontFamily: 'Poppins', fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
