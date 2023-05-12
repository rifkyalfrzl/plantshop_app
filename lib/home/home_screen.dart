import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantshop/components/constants.dart';
import 'package:plantshop/components/plant_card.dart';
import 'package:plantshop/login/login.dart';
import 'package:plantshop/login/logout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Logout()));
        }, child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Logout', style: GoogleFonts.lato(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold), ),
        ))
      ],
      backgroundColor: Color(0xFF0C9869),
    ),

    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Hi Plant Lovers!',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset("assets/images/plantshop.png",)
              ],
            ),
          ),
          Stack(
            children: [ 
              Positioned(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icons/search.svg"),
                  ],
                ),
              ),
            ),
            ]
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding),
                child: Text("Recomended", style: GoogleFonts.lato(fontSize: 16, color: kTextColor, fontWeight: FontWeight.w700),),
              ),
              Spacer(),
               Padding(
                padding: const EdgeInsets.only(right: kDefaultPadding),
                child: Text("More", style: GoogleFonts.lato(fontSize: 14, color: kTextColor, fontWeight: FontWeight.w700),),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PlantCard(plantImage: "assets/images/plant1.png", plantName: "Mounted Orchids Class", price: "40"),
                      PlantCard(plantImage: "assets/images/plant2.png", plantName: "Incdm. Popcorn 'Highland'", price: "30"),
                      PlantCard(plantImage: "assets/images/plant3.png", plantName: "Wils. Firecat 'Harmony'", price: "25"),
                    
              ],
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding),
                child: Text("Featured", style: GoogleFonts.lato(fontSize: 16, color: kTextColor, fontWeight: FontWeight.w700),),
              ),
              Spacer(),
               Padding(
                padding: const EdgeInsets.only(right: kDefaultPadding),
                child: Text("More", style: GoogleFonts.lato(fontSize: 14, color: kTextColor, fontWeight: FontWeight.w700),),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PlantCard(plantImage: "assets/images/plant4.png", plantName: "Aglaonema 'Pink Pearl'", price: "18"),
                      PlantCard(plantImage: "assets/images/plant5.png", plantName: "Aglaonema 'Rubi' (6in)", price: "15"),
                      PlantCard(plantImage: "assets/images/plant6.png", plantName: "Hydrocotyle tripartita (TC)", price: "10"),
                    
              ],
            ),

          )
        ],
      ),
    ),
    bottomNavigationBar: Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () {},
          ),
        ],
      ),
    ),
    );
  }
}
