import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantshop/components/constants.dart';
import 'package:plantshop/details/details_screen.dart';

class PlantCard extends StatelessWidget {
  final String plantImage;
  final String plantName;
  final String price;

PlantCard({
  required this.plantImage,
  required this.plantName,
  required this.price,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 25.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 150,
        height: 290,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //coffee image
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage(plantImage,),
                  fit: BoxFit.cover)
                ),
                ),

              //coffee name
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        plantName,
                        style: GoogleFonts.lato(fontSize: 16, color: Color.fromARGB(255, 0, 0, 0),),
                        maxLines: 2,
                      ),
                    ),
                    
                    //price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text('\$' + price, style: GoogleFonts.lato(fontSize: 16, color: kPrimaryColor), ),
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: const Icon(Icons.add, color: Colors.white,)),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(plantImage: this.plantImage, plantName: this.plantName, price: this.price,)));
                          },
                      ),
                    ],)
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}