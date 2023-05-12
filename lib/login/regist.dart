import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantshop/login/login.dart';
import 'package:plantshop/components/constants.dart';

class Regist extends StatefulWidget {
  const Regist({super.key});

  @override
  State<Regist> createState() => _RegistState();
}

class _RegistState extends State<Regist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8.0),
          color: kBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/plantshop.png")), shape: BoxShape.circle, color: kPrimaryColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            
            Text(
              'Create your account', style: GoogleFonts.lato(fontSize: 26, fontWeight: FontWeight.bold) ,
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
                    Icons.email,
                    size: 40,
                  ),
                  hintText: "Enter Your Email",
                  hintStyle: GoogleFonts.lato(color: Colors.black),
                  labelText: "Email",
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
                    Icons.person,
                    size: 40,
                  ),
                  hintText: "Enter Your UserName",
                  hintStyle: GoogleFonts.lato(color: Colors.black),
                  labelText: "Username",
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
                    Icons.phone,
                    size: 40,
                  ),
                  hintText: "Enter Your Phone Number",
                  hintStyle: GoogleFonts.lato(color: Colors.black),
                  labelText: "Phone Number",
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
                    Icons.lock,
                    size: 40,
                  ),
                  hintText: "Enter Your Password",
                  hintStyle: GoogleFonts.lato(color: Colors.black),
                  labelText: "Password",
                  labelStyle: GoogleFonts.lato(color: Colors.black)),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            SizedBox(
                width: 700,
                height: 50,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        kPrimaryColor
                      ),
                    ),
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
