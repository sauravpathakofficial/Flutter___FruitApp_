
import 'package:flutter/material.dart';

import '../constants.dart';

class MyBottonNavBar extends StatelessWidget {
  const MyBottonNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, -10),
          blurRadius: 35,
          color: kPrimaryColor.withOpacity(0.38),
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Image.asset('assets/icons/brocoli.png'),
              onPressed: () {}),
          IconButton(
              icon: Image.asset('assets/icons/heart.png'), onPressed: () {}),
          IconButton(
              icon: Image.asset('assets/icons/userMale.png'),
              onPressed: () {}),
        ],
      ),
    );
  }
}
