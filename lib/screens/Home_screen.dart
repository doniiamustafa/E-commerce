import 'dart:ui';

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/Components/components.dart';
import 'package:e_commerce/screens/cubit.dart';
import 'package:e_commerce/screens/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController(viewportFraction: 0.877);


  @override
  Widget build(BuildContext context) {

      return BlocConsumer<CubitScreen, ScreenStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, state) {
          return Scaffold(
            appBar:  AppBar(
    backgroundColor: kPrimaryColor,
    actions: [
      Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 150.0 , left: 20.0),
          child: Text('Styletude' , style: GoogleFonts.overlock(fontSize: 18.0 , fontWeight: FontWeight.w200),)
      ),
      IconButton(icon: Icon(Icons.search_outlined), onPressed: () {}),
      IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
    ]

),
            drawer: Drawer(
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text('Donia Mustafa'),
                    accountEmail: Text('abc@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 25.0,
                    ),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                    ),
                    otherAccountsPictures: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 25.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 25.0,
                      ),
                    ],
                  ),
                  ListTile(
                    onTap: (){},
                    title: Text('Home') ,
                    // trailing: Icon(Icons.arrow_forward_ios_outlined , size: 16.0,),   // arrow fl akher
                    leading: Icon(Icons.arrow_forward),                                // arrow fl awel
                  ),
                  ListTile(
                    onTap: (){},
                    title: Text('Home') ,
                    trailing: Icon(Icons.arrow_forward_ios_outlined , size: 16.0,),
                  ),
                  ListTile(
                    onTap: (){},
                    title: Text('Home') ,
                    trailing: Icon(Icons.arrow_forward_ios_outlined , size: 16.0,),
                  ),
                ],
              ),
            ),
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.only(left: 28.0),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    // title ****************************************************
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0 ,),
                      child: Text('Explore' , style: GoogleFonts.overlock(fontSize: 46.0 , fontWeight: FontWeight.w700)),
                    ),
                    // navigator bar ' default tab controller '******************************************
                    Container(
                      height: 30.0,
                      margin: EdgeInsets.only( top: 28.0),
                      child: DefaultTabController(
                        length: 6,
                        child: TabBar(
                            indicatorWeight: 2.4,
                            indicatorColor: Colors.grey[200],
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelPadding: EdgeInsets.only( left: 14.0 ,right: 14.0),
                            indicatorPadding: EdgeInsets.only( top:10.0),
                            isScrollable: true,
                            labelColor: Colors.black,
                            unselectedLabelColor: kPrimaryLightColor,
                            labelStyle: GoogleFonts.overlock(fontSize: 16.0 , fontWeight: FontWeight.w700 ),
                            unselectedLabelStyle: GoogleFonts.overlock(fontSize: 14.0 , fontWeight: FontWeight.w700 ),
                            tabs: [
                              Tab(
                                child: Container(
                                    child: Text('Tech Accessories')
                                ),
                              ),
                              Tab(
                                child: Container(
                                    child: Text('Eyewear')
                                ),
                              ),
                              Tab(
                                child: Container(
                                    child: Text('Wallets')
                                ),
                              ),
                              Tab(
                                child: Container(
                                    child: Text('Watches')
                                ),
                              ),
                              Tab(
                                child: Container(
                                    child: Text('Laptops')
                                ),
                              ),
                              Tab(
                                child: Container(
                                    child: Text('Bags')
                                ),
                              ),
                            ]),),
                    ),
                    // slider **************************************
                    Container(
                      height: 218.0,
                      margin: EdgeInsets.only(top: 16.0 ),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        controller: _pageController,
                        scrollDirection: Axis.horizontal,
                        itemCount: CubitScreen.get(context).categoriesSlider.length,
                        itemBuilder: (BuildContext context, int index)  {
                          return Container(
                            margin: EdgeInsets.only(right: 28.0),
                            height: 150.0,
                            width: 270.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.6),
                              image: DecorationImage(image: ExactAssetImage(CubitScreen.get(context).categoriesSlider[index]['image']), fit: BoxFit.cover),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                    bottom:18.0,
                                    left: 15.0,
                                    width: 180.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4.6),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 19.2, sigmaY: 19.2),

                                        child: Container(
                                          height: 36.0,
                                          padding: EdgeInsets.only(left: 16.0 , right: 14.0),
                                          alignment: Alignment.center,
                                          child: Text(
                                            CubitScreen.get(context).categoriesSlider[index]['name'] ,
                                            style: GoogleFonts.overlock(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),),
                                        ),


                                      ),
                                    )
                                )
                              ],
                            ),
                          );
                        },


                      ),

                    ),
                    //Popular categories **************************************
                    Padding(
                      padding: const EdgeInsets.only(top: 48.0 , right: 28.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Popular Categories' ,
                            style: GoogleFonts.overlock(
                              color: Colors.black ,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700,
                            ),),
                          Spacer(),
                          Text('Show All' ,
                            style: GoogleFonts.overlock(
                              color: kPrimaryLightColor ,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),)
                        ],
                      ),
                    ),
                    //one container opposite to two containers *************************
                    Padding(
                      padding: EdgeInsets.only(right: 24.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 14.0 ,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){CubitScreen.get(context).onTap(context);},
                              child: Container(
                                height: 205.0,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.6),
                                  image: DecorationImage( image: ExactAssetImage('assets/images/homeScreenSlider_1/tech_accessories.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 3.0,),
                            Column(
                              children: [
                                Container(
                                  height: 100.0,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.6),
                                    image: DecorationImage( image: ExactAssetImage('assets/images/homeScreenSlider_1/tech_accessories.jpg'),
                                      fit: BoxFit.cover,
                                    ),

                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          width: 100.0,
                                          height: 32.0,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(4.6),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 19.2, sigmaY: 19.2),

                                              child: Container(
                                                padding: EdgeInsets.only(left: 16.0 , right: 14.0),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'makeup' ,
                                                  style: GoogleFonts.overlock(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                  ),),
                                              ),


                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 3.0,),
                                Container(
                                  height: 100.0,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.6),
                                    image: DecorationImage( image: ExactAssetImage('assets/images/homeScreenSlider_1/tech_accessories.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          width: 100.0,
                                          height: 32.0,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(4.6),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 19.2, sigmaY: 19.2),

                                              child: Container(
                                                padding: EdgeInsets.only(left: 16.0 , right: 14.0),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'makeup' ,
                                                  style: GoogleFonts.overlock(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                  ),),
                                              ),


                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // horizontal list of categories ***********************************
                    Container(
                      height: 70.0,
                      margin: EdgeInsets.only(top: 20.0 ),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        controller: _pageController,
                        scrollDirection: Axis.horizontal,
                        itemCount: CubitScreen.get(context).categoriesSlider.length,
                        padding: EdgeInsets.only(right: 9.6),
                        itemBuilder: (BuildContext context, int index){
                          return Container(
                            margin: EdgeInsets.only(right: 19.6),
                            width: 145.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.6),
                              image: DecorationImage(image: ExactAssetImage(CubitScreen.get(context).categoriesSlider_2[index]['image']), fit: BoxFit.cover),
                            ),
                          );
                        },

                      ),
                    ),
                    // fashion store title **************************************
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0 , right: 28.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Fashion Store' ,
                            style: GoogleFonts.overlock(
                              color: Colors.black ,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700,
                            ),),
                          Spacer(),
                          Text('Show All' ,
                            style: GoogleFonts.overlock(
                              color: kPrimaryLightColor ,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),)
                        ],
                      ),
                    ),
                    //one container opposite to two containers *************************
                    Padding(
                      padding: EdgeInsets.only(right: 24.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 14.0 ,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 205.0,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.6),
                                image: DecorationImage( image: ExactAssetImage('assets/images/homeScreenSlider_1/tech_accessories.jpg'),
                                  fit: BoxFit.cover,
                                ),

                              ),
                            ),
                            SizedBox(width: 2.0,),
                            Column(
                              children: [
                                Container(
                                  height: 100.0,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.6),
                                    image: DecorationImage( image: ExactAssetImage('assets/images/homeScreenSlider_1/tech_accessories.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          width: 100.0,
                                          height: 32.0,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(4.6),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 19.2, sigmaY: 19.2),

                                              child: Container(
                                                padding: EdgeInsets.only(left: 16.0 , right: 14.0),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Men' ,
                                                  style: GoogleFonts.overlock(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                  ),),
                                              ),


                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 2.0,),
                                Container(
                                  height: 100.0,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.6),
                                    image: DecorationImage( image: ExactAssetImage('assets/images/homeScreenSlider_1/tech_accessories.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          width: 100.0,
                                          height: 32.0,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(4.6),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 19.2, sigmaY: 19.2),

                                              child: Container(
                                                padding: EdgeInsets.only(left: 16.0 , right: 14.0),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Men' ,
                                                  style: GoogleFonts.overlock(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                  ),),
                                              ),


                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //one container opposite to two containers *************************
                    Padding(
                      padding: EdgeInsets.only(right: 24.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 14.0 ,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 205.0,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.6),
                                image: DecorationImage( image: ExactAssetImage('assets/images/homeScreenSlider_1/tech_accessories.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 2.0,),
                            Column(
                              children: [
                                Container(
                                  height: 100.0,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.6),
                                    image: DecorationImage( image: ExactAssetImage('assets/images/homeScreenSlider_1/tech_accessories.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          width: 100.0,
                                          height: 32.0,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(4.6),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 19.2, sigmaY: 19.2),

                                              child: Container(
                                                padding: EdgeInsets.only(left: 16.0 , right: 14.0),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Kids' ,
                                                  style: GoogleFonts.overlock(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                  ),),
                                              ),


                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 2.0,),
                                Container(
                                  height: 100.0,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.6),
                                    image: DecorationImage( image: ExactAssetImage('assets/images/homeScreenSlider_1/tech_accessories.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          width: 100.0,
                                          height: 32.0,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(4.6),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 19.2, sigmaY: 19.2),

                                              child: Container(
                                                padding: EdgeInsets.only(left: 16.0 , right: 14.0),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Kids' ,
                                                  style: GoogleFonts.overlock(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                  ),),
                                              ),


                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

          );
        },
        );

  }
}
