import 'package:flutter/material.dart';
import 'package:fruit_shop/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecomendFruit extends StatelessWidget {
  const RecomendFruit({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendFruitCard(
            image: "assets/images/image1.png",
            title: "PineApple",
            price: 100,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecomendFruitCard(
            image: "assets/images/image2.png",
            title: "Banana",
            price: 40,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecomendFruitCard(
            image: "assets/images/image3.png",
            title: "Apple",
            price: 200,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class RecomendFruitCard extends StatelessWidget {
  const RecomendFruitCard({
    Key key,
    this.image,
    this.title,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title;
  final int price;
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
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: title,
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\u20B9" + price.toString() + "/Kg",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
