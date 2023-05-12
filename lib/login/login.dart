import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantshop/components/constants.dart';
import 'package:plantshop/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantshop/login/regist.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
              "WELCOME",
              style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text(
              'Please Login', style: GoogleFonts.lato(fontSize: 16),
            ),
            SizedBox(
              height: 20,
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
                    Icons.person, color: Colors.black,
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
              height: 40,
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
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        kPrimaryColor,
                      ),
                    ),
                    child: Text(
                      "LOGIN",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )),
                SizedBox(height: kDefaultPadding,),
                Row(
                  children: [
                    Text("Don't have account?", style: GoogleFonts.lato(fontSize: 16),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Regist()));
                    }, child: Text("Create Account", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),))
                  ],
                )
          ]),
        ),
        ] 
      ),
    );
  }
}
