import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:plantshop/components/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    required this.plantName,
    required this.price,
  });

  final String plantName, price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Container(
        width: size.width,
        child: Row(
          children: <Widget>[
            Column(
              children: [
                Text(plantName, style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            Spacer(),
            Text(
              "\$$price",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: kPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}