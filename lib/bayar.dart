import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantshop/components/constants.dart';
import 'package:plantshop/notifikasi.dart';
import 'package:plantshop/details/details_screen.dart';

class Bayar extends StatelessWidget {
  final String plantImage;
  final String plantName;
  final String price;

  const Bayar({
    required this.plantImage,
    required this.plantName,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Payment'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: kDefaultPadding,),
          Container(
            
            child: Column(
                children: [
                  Container(
                    height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(plantImage))
              ),
                  ),
                  SizedBox(height: kDefaultPadding,),
                  Text(
                    plantName,
                    
                    style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: kDefaultPadding/2,),
                  Text(
                    'Price  \$ $price',
                    
                    style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 18, color: kPrimaryColor),
                  ),
                ],
              ),
          ),
          SizedBox(height: kDefaultPadding,),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: Text(
                      'Enter your address', style: GoogleFonts.lato(fontSize: 26, fontWeight: FontWeight.bold) ,
                    ),
          ),
          SizedBox(height: kDefaultPadding,),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
            child: Column(
              children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(
                          Icons.location_on,
                          size: 30,
                        ),
                        hintText: "Enter Your Country",
                        hintStyle: GoogleFonts.lato(color: Colors.black),
                        labelText: "Country",
                        labelStyle: GoogleFonts.lato(color: Colors.black)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(
                          Icons.location_searching,
                          size: 30,
                        ),
                        hintText: "Enter Your Province",
                        hintStyle: GoogleFonts.lato(color: Colors.black),
                        labelText: "Province",
                        labelStyle: GoogleFonts.lato(color: Colors.black)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(
                          Icons.location_city,
                          size: 30,
                        ),
                        hintText: "Enter Your City",
                        hintStyle: GoogleFonts.lato(color: Colors.black),
                        labelText: "City",
                        labelStyle: GoogleFonts.lato(color: Colors.black)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(
                          Icons.nature_outlined,
                          size: 30,
                        ),
                        hintText: "Enter Your Postal Code",
                        hintStyle: GoogleFonts.lato(color: Colors.black),
                        labelText: "Postal Code",
                        labelStyle: GoogleFonts.lato(color: Colors.black)),
                  ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding,),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: Text('Payment Method', style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 26),),
          ),
          SizedBox(height: kDefaultPadding/2,),
          Container(
            height: 70,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Notifikasi(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: kDefaultPadding),
                        child: Image.asset(
                          'assets/images/cod.png',
                        ),
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Notifikasi(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: kDefaultPadding),
                        child: Image.asset(
                          'assets/images/bni.png',
                          width: 100,
                          height: 150,
                        ),
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Transfer to 2010631170110', style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 16)),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            child: Card(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Notifikasi(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: kDefaultPadding),
                        child: Image.asset(
                          'assets/images/bri.png',
                          width: 100,
                          height: 150,
                        ),
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Transfer to 2010631170029', style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 16)),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
