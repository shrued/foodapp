import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/components/item_image.dart';
import 'package:food_app/screens/details/components/order_button.dart';
import 'package:food_app/screens/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopName(name: "McDonald's"),
          TitlePriceRating(
            name: "Cheese Burger",
            numOfReviews: 24,
            rating: 24,
            price: 15,
            onRatingChanged: (value) {},
          ),
          Text(
            "The original burger starts with a 100% pure beef burger seasoned with just a pinch of salt and pepper. ... Then, the McDonald's burger is topped with a tangy pickle, chopped onions, ketchup and mustard. McDonald's hamburger contains no artificial flavors, preservatives or added colors from artificial sources.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          OrderButton(
            size: size,
            press: () {},
          ),
        ],
      ),
    );
  }

  Row shopName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
