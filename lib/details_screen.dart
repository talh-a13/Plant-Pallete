import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/homepage.dart';
import 'package:flutter_plant_app/product_details.dart';

class detailscreen extends StatefulWidget {
  const detailscreen({super.key});

  @override
  State<detailscreen> createState() => _detailscreenState();
}

class _detailscreenState extends State<detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              color: primaryColor,
              child: Padding(
                padding: EdgeInsets.only(top: 800, left: 2),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('Height',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          Text('40cm - 50cm',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Column(
                        children: [
                          Text('Pot',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          Text('Self Watering Pot',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Column(
                        children: [
                          Text('Temperature',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          Text('18C-25C',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            )),
            //Hero(tag: 'Flower1', child:Image.asset('images/flower1.png')),
            Positioned(
                child: Container(
              height: MediaQuery.of(context).size.height * 0.85,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                        right: 16,
                        left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homepage()));
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                        Image.asset(
                          'images/filter.png',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: Text('House Shape                     Close Plant',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 42, top: 42),
                    child: Stack(
                      children: [
                        Image.asset(
                          'images/flower1.png',
                          width: MediaQuery.of(context).size.width,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 400, left: 45, bottom: 20),
              child: Container(
                height: 20,
                width: 8,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 440, left: 45, bottom: 20),
              child: Container(
                height: 10,
                width: 8,
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 425, left: 45, bottom: 20),
              child: Container(
                height: 10,
                width: 8,
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),

            const Positioned(
                top: 270,
                left: 13,
                child: Text(
                  "\$45",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: 130,
                right: 40,
                child: Icon(
                  Icons.favorite_border,
                  color: primaryColor,
                  size: 32,
                )),
            Positioned(
                top: 430,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(40)),
                    color: primaryColor,
                  ),
                  height: 70,
                  width: 50,
                  child:
                      Icon(Icons.add_circle, color: secondaryColor, size: 59),
                ))
          ],
        ),
      ),
    );
  }
}
