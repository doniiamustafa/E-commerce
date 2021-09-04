import 'package:e_commerce/screens/Components/components.dart';
import 'package:e_commerce/screens/Home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          margin: EdgeInsets.only(left: 28.0, right: 28.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image(image: AssetImage('assets/images/signup/signup.png'),),
                ),
                SizedBox(height: 20.0,),
                Text('Signup' , style: GoogleFonts.overlock(color: Colors.black , fontSize: 30.0 , fontWeight: FontWeight.w500),),
                SizedBox(height: 25.0,),
                TextFormField(
                  controller: emailController ,
                  keyboardType: TextInputType.emailAddress ,
                  decoration: InputDecoration(
                    labelText: 'Email' ,
                    labelStyle: GoogleFonts.overlock(color: Colors.grey[700]),
                    hintText: 'ex: abc@gmail.com' ,
                    hintStyle: GoogleFonts.overlock(color: Colors.grey[700]),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                      ),
                  ),
                ),),

                SizedBox(height:15.0 ,),
                TextFormField(
                  obscureText: true ,
                  controller: passwordController  ,
                  decoration: InputDecoration(
                    labelText: 'Password' ,
                    labelStyle: GoogleFonts.overlock(color: Colors.grey[700]),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                  ),
                ),),),

                SizedBox(height:15.0 ,),
                TextFormField(
                  controller: nameController ,
                  keyboardType: TextInputType.name ,
                  decoration: InputDecoration(
                    labelText: 'Name' ,
                    labelStyle: GoogleFonts.overlock(color: Colors.grey[700]),
                    hintText: 'ex: Mohammed Ashraf' ,
                    hintStyle: GoogleFonts.overlock(color: Colors.grey[700]),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                  ),),),),

                SizedBox(height:15.0 ,),
                TextFormField(
                  controller: addressController ,
                  keyboardType: TextInputType.streetAddress ,
                  decoration: InputDecoration(
                    labelText: 'Address' ,
                    labelStyle: GoogleFonts.overlock(color: Colors.grey[700]),
                    hintText: 'ex: block..street_name..city' ,
                    hintStyle: GoogleFonts.overlock(color: Colors.grey[700]),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                  ),),),),

                SizedBox(height:15.0 ,),
                TextFormField(
                  controller: phoneController ,
                  keyboardType: TextInputType.phone ,
                  decoration: InputDecoration(
                    labelText: 'Phone number' ,
                    labelStyle: GoogleFonts.overlock(color: Colors.grey[700]),
                    hintText: '+20 111 234 567' ,
                    hintStyle: GoogleFonts.overlock(color: Colors.grey[700]),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                  ),),),),

                SizedBox(height: 20.0,),
                defaultButton('Signup' , function: (){navigateTo(context: context , route: HomeScreen());}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
