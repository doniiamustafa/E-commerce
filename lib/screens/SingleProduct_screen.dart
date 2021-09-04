import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/Components/components.dart';
import 'package:e_commerce/screens/cubit.dart';
import 'package:e_commerce/screens/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';


class SingleProduct extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitScreen, ScreenStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
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
          body: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: 0.0 , bottom: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                          height: 200.0,
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 3)),
                      items: [
                        'assets/images/homeScreenSlider_1/tech_accessories.jpg',
                        'assets/images/homeScreenSlider_1/tech_accessories.jpg',
                        'assets/images/homeScreenSlider_1/tech_accessories.jpg',
                      ].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0 , vertical: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.6),
                                image: DecorationImage(image: ExactAssetImage(i), fit: BoxFit.cover),
                              ),
                              // child: Image(
                              //   image: AssetImage(i),
                              // ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Container(
                      color: Colors.grey[400],
                      height: 3.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DeFacto',
                            style: GoogleFonts.overlock(
                                color: kPrimaryColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Pumpkin Berry Baby Lace Petti Romper Tutu Clothing HeadBand Set',
                            style: GoogleFonts.overlock(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              RatingBar.builder(
                                  itemSize: 25.0,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                onRatingUpdate: (rating) {
                                    CubitScreen.get(context).ratingBar(rating);
                                    },
                              ),


                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                (CubitScreen.get(context).ratingVariable.toString()),
                                style: GoogleFonts.overlock(
                                    color: Colors.grey[600],
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Text(
                                'EGP 517.00',
                                style: GoogleFonts.overlock(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'EGP 730.00',
                                style: GoogleFonts.overlock(
                                    color: Colors.grey,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              Spacer(),
                              Text(
                                'Availability: 8 items',
                                style: GoogleFonts.overlock(
                                    color: Colors.green[700],
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey[400],
                      height: 3.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Color',
                            style: GoogleFonts.overlock(
                              color: Colors.grey[600],
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Container(
                                  color: Colors.grey[300],
                                  height: 35.0,
                                  child: FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Black',
                                        style: GoogleFonts.overlock(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600),
                                      ))),
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                  color: Colors.grey[300],
                                  height: 35.0,
                                  child: FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Red',
                                        style: GoogleFonts.overlock(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600),
                                      ))),
                              SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                  color: Colors.grey[300],
                                  height: 35.0,
                                  child: FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Grey',
                                        style: GoogleFonts.overlock(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600),
                                      ))),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      color: Colors.grey[400],
                      height: 3.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Size',
                            style: GoogleFonts.overlock(
                              color: Colors.grey[600],
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        color: Colors.grey[300],
                                        height: 30.0,
                                        width: 60.0,
                                        child: FlatButton(
                                            onPressed: () {},
                                            child: Text(
                                              'S',
                                              style: GoogleFonts.overlock(
                                                color: Colors.black,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ))),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Container(
                                        color: Colors.grey[300],
                                        height: 30.0,
                                        width: 60.0,
                                        child: FlatButton(
                                            onPressed: () {},
                                            child: Text(
                                              'M',
                                              style: GoogleFonts.overlock(
                                                color: Colors.black,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ))),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Container(
                                        color: Colors.grey[300],
                                        height: 30.0,
                                        width: 60.0,
                                        child: FlatButton(
                                            onPressed: () {},
                                            child: Text(
                                              'L',
                                              style: GoogleFonts.overlock(
                                                  color: Colors.black,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w600),
                                            ))),
                                  ]),
                              SizedBox(height: 10.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      color: Colors.grey[300],
                                      height: 30.0,
                                      width: 60.0,
                                      child: FlatButton(
                                          onPressed: () {},
                                          child: Text(
                                            'XL',
                                            style: GoogleFonts.overlock(
                                                color: Colors.black,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w600),
                                          )
                                      )
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Container(
                                      color: Colors.grey[300],
                                      height: 30.0,
                                      width: 60.0,
                                      child: FlatButton(
                                          onPressed: () {},
                                          child: Text(
                                            'XXL',
                                            style: GoogleFonts.overlock(
                                                color: Colors.black,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w600),
                                          )
                                      )
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Container(
                                      color: Colors.grey[300],
                                      height: 30.0,
                                      width: 60.0,
                                      child: FlatButton(
                                          onPressed: () {},
                                          child: Text(
                                            'XXXL',
                                            style: GoogleFonts.overlock(
                                                color: Colors.black,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w600),
                                          )
                                      )
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(

                      color: Colors.grey[400],
                      height: 3.0,
                    ),

                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                            child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      'Qty',style: GoogleFonts.overlock(),
                                    ),
                                    Text(
                                      '1',style: GoogleFonts.overlock(),
                                    )
                                  ],
                                )),
                            height: 40.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2.0),
                            )),
                        Expanded(
                            child: defaultButton('add to cart'.toUpperCase(),
                                padding: 8.0,function: () {
                                  // navigatorTo(context: context, route: ProductScreen());
                                })),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    Container(
                      // background of body (el fawasel eli been kol goz2)
                      color: Colors.grey[400],
                      height: 3.0,
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RatingBar.builder(
                            itemSize: 25.0,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              CubitScreen.get(context).ratingBar(rating);
                            },
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Rate This Product',
                            style: GoogleFonts.overlock(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Write Review ',
                            style: GoogleFonts.overlock(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0),
                            child: TextFormField(
                              controller: TextEditingController(),
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  hintText: 'Write your Review Here...',
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: kPrimaryColor,),),
                                  hintStyle: GoogleFonts.overlock(),
                                  focusColor: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RaisedButton(
                                  color: kPrimaryColor,
                                  onPressed: () {},
                                  child: Text(
                                    'Submit',
                                    style: GoogleFonts.overlock(color: Colors.white, fontSize: 16.0),
                                  )),
                              SizedBox(
                                width: 10.0,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Reviews(22)',
                            style: GoogleFonts.overlock(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(children: [
                            RatingBar.builder(
                              itemSize: 25.0,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                CubitScreen.get(context).ratingBar(rating);
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              (CubitScreen.get(context).ratingVariable.toString()),
                              style: GoogleFonts.overlock(
                                  color: Colors.grey[600],
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ]),
                          SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 30.0,
                                ),
                                SizedBox(width: 8.0),
                                Expanded(
                                  // 3amlt el column expanded 3lshan el spacer() teshtghal
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 5.0),
                                          Text(
                                            'Donia Mustafa',
                                            style: GoogleFonts.overlock(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Spacer(),
                                          RatingBar.builder(
                                            itemSize: 25.0,
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              CubitScreen.get(context).ratingBar(rating);
                                            },
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                        height: 1.0,
                                        color: Colors.grey[600],
                                      ),
                                      SizedBox(
                                        height: 12.0,
                                      ),
                                      Text(
                                          'Focused and remember we design the best woldpress news and magazine themes. it is the coolest one on earth closet to you soo, Try it.',
                                          style: GoogleFonts.overlock(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            color: Colors.grey[600],
                            height: 1.0,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 30.0,
                                ),
                                SizedBox(width: 8.0),
                                Expanded(
                                  // 3amlt el column expanded 3lshan el spacer() teshtghal
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 5.0),
                                          Text(
                                            'Donia Mustafa',
                                            style: GoogleFonts.overlock(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Spacer(),
                                          RatingBar.builder(
                                            itemSize: 25.0,
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              CubitScreen.get(context).ratingBar(rating);
                                            },
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                        height: 1.0,
                                        color: Colors.grey[600],
                                      ),
                                      SizedBox(
                                        height: 12.0,
                                      ),
                                      Text(
                                          'Focused and remember we design the best woldpress news and magazine themes. it is the coolest one on earth closet to you soo, Try it.',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            color: Colors.grey[600],
                            height: 1.0,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 30.0,
                                ),
                                SizedBox(width: 8.0),
                                Expanded(
                                  // 3amlt el column expanded 3lshan el spacer() teshtghal
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 5.0),
                                          Text(
                                            'Donia Mustafa',
                                            style: GoogleFonts.overlock(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Spacer(),
                                          RatingBar.builder(
                                            itemSize: 25.0,
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              CubitScreen.get(context).ratingBar(rating);
                                            },
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                        height: 1.0,
                                        color: Colors.grey[600],
                                      ),
                                      SizedBox(
                                        height: 12.0,
                                      ),
                                      Text(
                                          'Focused and remember we design the best woldpress news and magazine themes. it is the coolest one on earth closet to you soo, Try it.',
                                          style: GoogleFonts.overlock(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            color: Colors.grey[600],
                            height: 1.0,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 30.0,
                                ),
                                SizedBox(width: 8.0),
                                Expanded(
                                  // 3amlt el column expanded 3lshan el spacer() teshtghal
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 5.0),
                                          Text(
                                            'Donia Mustafa',
                                            style: GoogleFonts.overlock(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Spacer(),
                                          RatingBar.builder(
                                            itemSize: 25.0,
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              CubitScreen.get(context).ratingBar(rating);
                                            },
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                        height: 1.0,
                                        color: Colors.grey[600],
                                      ),
                                      SizedBox(
                                        height: 12.0,
                                      ),
                                      Text(
                                          'Focused and remember we design the best woldpress news and magazine themes. it is the coolest one on earth closet to you soo, Try it.',
                                          style: GoogleFonts.overlock(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            color: Colors.grey[600],
                            height: 1.0,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },


    );
  }
}
