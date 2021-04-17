import 'package:flutter/material.dart';

import '../../../constants.dart';



class FeaturedFruits extends StatelessWidget {
  const FeaturedFruits({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeatureFruitCard(
              image: "assets/images/bottom_image_1.png", press: () {}),
          FeatureFruitCard(
              image: "assets/images/bottom_image_2.png", press: () {}),
        ],
      ),
    );
  }
}

class FeatureFruitCard extends StatelessWidget {
  const FeatureFruitCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image))),
      ),
    );
  }
}
