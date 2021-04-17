import 'package:flutter/material.dart';
import 'package:fruit_shop/constants.dart';

// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:fruit_shop/constants.dart';
//
// import 'icon_card.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "PineApple",
            price: 100,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  child: Text("Buy Now"),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    primary: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    textStyle: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text("Description"),
                  onPressed: () {},
                ),
              )
            ],
          ),
          SizedBox( height: kDefaultPadding*2,)
        ],
      ),
    );
  }
}
