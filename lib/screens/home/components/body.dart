import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_shop/screens/home/components/recomend_fruit.dart';
import 'package:fruit_shop/screens/home/components/title_with_more_bbtn.dart';
import '../../../constants.dart';
import 'featured_fruits.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          titleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendFruit(),
          titleWithMoreBtn(
            title: "Featured Fruits",
            press: () {},
          ),
          FeaturedFruits(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
