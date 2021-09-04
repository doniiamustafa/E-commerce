import 'package:e_commerce/screens/Components/components.dart';
import 'package:e_commerce/screens/Home_screen.dart';
import 'package:e_commerce/screens/SingleProduct_screen.dart';
import 'package:e_commerce/screens/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CubitScreen extends Cubit <ScreenStates>
{
  CubitScreen() : super(IntialScreenState());

  static CubitScreen get(context) => BlocProvider.of(context);


  var ratingVariable = 3.0;

  List<Map<String , dynamic >> categoriesSlider = [
    { "name" : 'Tech Acessories1' , "image" : "assets/images/homeScreenSlider_1/tech_accessories.jpg" ,},
    { "name" : 'Tech Acessories2'  , "image" : "assets/images/homeScreenSlider_1/tech_accessories.jpg",},
    { "name" : 'Tech Acessories3' , "image" : "assets/images/homeScreenSlider_1/tech_accessories.jpg" ,},
    { "name" : 'Tech Acessories4' , "image" : "assets/images/homeScreenSlider_1/tech_accessories.jpg" ,},
    { "name" : 'Tech Acessories5' , "image" : "assets/images/homeScreenSlider_1/tech_accessories.jpg" ,},
    { "name" : 'Tech Acessories6'  , "image" : "assets/images/homeScreenSlider_1/tech_accessories.jpg" ,},
    { "name" : 'Tech Acessories7' , "image" : "assets/images/homeScreenSlider_1/tech_accessories.jpg" ,},
    { "name" : 'Tech Acessories8' , "image" : "assets/images/homeScreenSlider_1/tech_accessories.jpg" ,},
  ];

  List<Map<String , dynamic >> categoriesSlider_2 = [
    { "name" : 'Tech Acessories1' , "image" : "assets/images/homeScreenSlider_2/orange.jpg" ,},
    { "name" : 'Tech Acessories2'  , "image" : "assets/images/homeScreenSlider_2/orange.jpg",},
    { "name" : 'Tech Acessories3' , "image" : "assets/images/homeScreenSlider_2/orange.jpg" ,},
    { "name" : 'Tech Acessories4' , "image" : "assets/images/homeScreenSlider_2/orange.jpg" ,},
    { "name" : 'Tech Acessories5' , "image" : "assets/images/homeScreenSlider_2/orange.jpg" ,},
    { "name" : 'Tech Acessories6'  , "image" : "assets/images/homeScreenSlider_2/orange.jpg" ,},
    { "name" : 'Tech Acessories7' , "image" : "assets/images/homeScreenSlider_2/orange.jpg" ,},
    { "name" : 'Tech Acessories8' , "image" : "assets/images/homeScreenSlider_2/orange.jpg" ,},
  ];

  ratingBar(double rating){

        print(rating);
        ratingVariable = rating;
       emit(RatingScreenState());

  }
  onTap(BuildContext context){
    navigateTo(context: context , route: SingleProduct());
    emit(LoadingScreenState());
  }

}
