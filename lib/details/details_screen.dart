import 'package:flutter/material.dart';
import 'package:plantshop/bayar.dart';
import 'package:plantshop/details/components/image_and_icons.dart';
import 'package:plantshop/details/components/title_and_price.dart';
import 'package:plantshop/components/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    required this.plantImage,
    required this.plantName,
    required this.price,
  });

  final String plantImage, plantName, price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child: Scaffold(
        body:  SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageAndIcons(plantImage: this.plantImage, size: size),
            TitleAndPrice(plantName: this.plantName, price: this.price),
            SizedBox(height: kDefaultPadding),
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Bayar(
                      plantImage: this.plantImage, plantName: this.plantName, price: this.price,
                      )));
                  },
                  child: Container(
                    height: 60,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                        color: Color(0xFF0C9869)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: FittedBox(
                          child: Text(
                            'Buy now',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
               
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}