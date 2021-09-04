import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/Components/components.dart';
import 'package:e_commerce/screens/Signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_screen.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar:  AppBar(
       backgroundColor: Colors.white,
       elevation: 0.0,
     ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 300.0,
                  width: 600.0,
                  child: Image(image: AssetImage('assets/images/login/login.png',)
                  )),
              Container(
                  alignment: AlignmentDirectional.topStart,
                  padding: EdgeInsets.only(left: 24.0 , bottom: 24.0),
                  child: Text('Login' , style: GoogleFonts.overlock(color: Colors.black , fontSize: 30.0 , fontWeight: FontWeight.w500),)
              ),



              Padding(
                padding: const EdgeInsets.only(left: 24.0 , right: 24.0),
                child: TextFormField(
                  controller: emailController ,
                  keyboardType: TextInputType.emailAddress ,
                  decoration: InputDecoration(
                    labelText: 'Email' ,
                    labelStyle: GoogleFonts.overlock(color: Colors.grey[700]),
                    hintText: 'ex: abc@gmail.com' ,
                    hintStyle: GoogleFonts.overlock(),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                      ),
                    ),
                  ),),
              ),

              SizedBox(height:12.0 ,),
              Padding(
                padding: const EdgeInsets.only(left: 24.0 , right: 24.0),
                child: TextFormField(
                  obscureText: true ,
                  controller: passwordController  ,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: GoogleFonts.overlock(color: Colors.grey[700]),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                      ),
                    ),
                  ),),
              ),
              SizedBox(height: 35.0,),
              defaultButton('Login' , function: (){navigateTo(context: context , route: HomeScreen());}),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 35.0, top:55.0),
                      height: 2.0,
                      width: 105.0,
                      color: Colors.grey[300],
                  ),
                  Container(
                    margin: EdgeInsets.only(top:47.0, left: 5.0 ),
                    child: Text('Or login with', style:GoogleFonts.overlock(color: Colors.grey[500] , fontWeight: FontWeight.w400),),
                  ),
                  Container(
                    margin: EdgeInsets.only( left: 5.0 , top:55.0),
                    height: 2.0,
                    width: 105.0,
                    color: Colors.grey[300],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.only(left: 10.0 , top: 29.0),
                    child: Image(image: AssetImage('assets/images/icons/twitter.png')),
                  ),
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.only(left: 10.0 , top: 29.0),
                    child: Image(image: AssetImage('assets/images/icons/google-plus.png')),
                  ),
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.only(left: 10.0 , top: 29.0),
                    child: Image(image: AssetImage('assets/images/icons/facebook.png')),
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