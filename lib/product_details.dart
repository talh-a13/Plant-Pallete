import 'package:flutter/material.dart';

class details extends StatefulWidget {
  details({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });
  final String name;
  final String image;
  final String price;

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Image.asset(
          widget.image,
        )),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 55,
          ),
          child: Text(
            widget.name,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 55,
          ),
          child: Center(
            child: Text(
              'A charming, compact plant featuring uniquely shaped foliage that resembles a miniature house, perfect for adding a touch of whimsy to any space. ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55, right: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${widget.price}",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'images/basket.png',
                height: 60,
                width: 60,
              )
            ],
          ),
        )
      ],
    );
  }
}
