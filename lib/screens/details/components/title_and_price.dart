import 'package:flutter/material.dart';

import '../../../constants.dart';


class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key, this.title, this.price,
  }) : super(key: key);

  final String title;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: title,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: kTextColor, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Spacer(),
          Text("\u20B9" + price.toString()  + "/Kg" ,style: Theme.of(context).textTheme.headline5.copyWith(color: kPrimaryColor) ),
        ],
      ),
    );
  }
}
