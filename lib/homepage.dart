import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/details_screen.dart';
import 'package:flutter_plant_app/product_details.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              sidebar(),
              bodyparts(size,context),
            ],
          ),
          const Positioned(
              top: 130,
              left: 20,
              child: Text(
                'Plants',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              )),
          const Positioned(
              top: 30,
              right: 8,
              child: Icon(
                Icons.search,
                size: 40,
              ))
        ],
      ),
    );
  }

  Container bodyparts(Size size, BuildContext context) {
    return Container(
      width: size.width * .8,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const detailscreen()));
              },
              child: Hero(
                tag: 'Flower1',
                child: details(
                    image: 'images/flower1.png',
                    name: "House Shap Close",
                    price: '45'),
              ),
            ),
            Hero(
                tag: 'Flower2',
                child: details(
                    image: 'images/flower2.png',
                    name: "Glass Water",
                    price: "35"))
          ],
        ),
      ),
    );
  }

  Expanded sidebar() {
    return Expanded(
        child: Container(
      color: secondaryColor,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Image(
              image: AssetImage(
                'images/more.png',
              ),
              width: 40,
              height: 100,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'Green',
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 190,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: RotatedBox(
              quarterTurns: 3,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text: 'Shape Class',
                        style: TextStyle(color: primaryColor)),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: RotatedBox(
              quarterTurns: 3,
              child: RichText(
                  text: const TextSpan(
                      text: 'Indoor plant',
                      style: TextStyle(color: Colors.black))),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: RotatedBox(
              quarterTurns: 3,
              child: RichText(
                  text: const TextSpan(
                      text: 'Green Plant',
                      style: TextStyle(color: Colors.black))),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110, right: 16),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Color.fromARGB(255, 249, 119, 132)),
              width: 60,
              height: 70,
              child: const Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
