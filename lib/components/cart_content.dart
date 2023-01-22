import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  final AssetImage clothe;
  final String brandCartName;
  final String size;
  final String quantity;
  final String price;
  const CartCard({
    Key? key,
    required this.brandCartName,
    required this.size,
    required this.quantity,
    required this.price,
    required this.clothe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15.0, right: 15, top: 15.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color(0xFFebebeb),
      ),
      child: Row(
        children: [
          Expanded(
            child: Image(
              image: clothe,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                brandCartName,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25.0,
                ),
              ),
              Text(
                'Size:  $size',
                style: const TextStyle(color: Colors.grey, fontFamily: 'Poppins'),
              ),
              Text(
                'QTY:  $quantity',
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                "\$$price",
                style: const TextStyle(fontFamily: 'Poppins'),
              ),
              const SizedBox(height: 20.0),
              Container(
                child: Row(
                  children: const [
                    Icon(Icons.edit_calendar_outlined),
                    SizedBox(width: 8.0),
                    Text(
                      'Edit',
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                    SizedBox(width: 24.0),
                    Icon(Icons.highlight_remove_outlined),
                    SizedBox(width: 8.0),
                    Text(
                      'Remove',
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
