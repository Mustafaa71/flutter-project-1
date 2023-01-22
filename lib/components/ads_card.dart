import 'package:flutter/material.dart';

class AdsCard extends StatelessWidget {
  const AdsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: const Color(0xff20d59f),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image(
                      height: 200.0,
                      width: 200.0,
                      image: AssetImage('images/black-friday-(1).png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: const Text(
                            'SHOP NOW',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 30.0,
                              color: Color(0xfffefefe),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: const Text(
                            'Exclusive discount on selected items!',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                              color: Color(0xfffefefe),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
