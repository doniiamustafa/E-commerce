import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/Components/components.dart';
import 'package:e_commerce/screens/Login_screen.dart';
import 'package:e_commerce/screens/Signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar:  AppBar(
  backgroundColor: Colors.white,
  elevation: 0.0,
),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Welcome' , style: GoogleFonts.overlock(color: Colors.black , fontSize: 30.0 , fontWeight: FontWeight.w500),),
            SizedBox(height: 10.0,),
            Text('Enjoy the experience' , style: GoogleFonts.overlock(color: Colors.grey , fontSize: 25.0 , fontWeight: FontWeight.w500),),
            SizedBox(height: 50.0,),



            Container(
               height: 300.0,
                width: 600.0,
                child: Image(image: AssetImage('assets/images/login/welcome.png' ,)
                )),


            SizedBox(height: 25.0),

            defaultButton('Login', function: (){ navigateTo(context: context , route: LoginScreen());}),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Container(
                height: 48.0,
                width: double.infinity,
                child: FloatingActionButton(
                  onPressed: (){
                    navigateTo(context: context , route: SignupScreen());
                  },
                  child: Text('Signup' , style: TextStyle(color: Colors.grey[700] , fontSize: 16.0 , fontWeight: FontWeight.w500)),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),),
                  backgroundColor: kPrimaryLightColor ,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}