import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

Widget defaultButton(text, {padding = 35.0 , function}) => Padding(
  padding: EdgeInsets.symmetric(horizontal: padding , ),
  child: Container(
    width: double.infinity,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0) , color: kPrimaryColor),
    child: FlatButton(
      onPressed: function,
      child: Text('$text' , style: GoogleFonts.overlock(color: Colors.white , fontSize: 16.0),),
    ),
  ),
);

void navigateTo ({context , route}) => Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => route));