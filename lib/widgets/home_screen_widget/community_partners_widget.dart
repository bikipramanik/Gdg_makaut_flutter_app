import 'package:flutter/material.dart';

class CommunityPartnersWidget extends StatelessWidget {
  const CommunityPartnersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.09,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 150,
            width: 100,
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Image.asset(
              "lib/assets/community/amazon.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 150,
            width: 100,
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Image.asset(
              "lib/assets/community/cocacola.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 150,
            width: 100,
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Image.asset(
              "lib/assets/community/mustang.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 150,
            width: 100,
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Image.asset(
              "lib/assets/community/nike.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 150,
            width: 100,
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Image.asset(
              "lib/assets/community/starbucks.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 150,
            width: 100,
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Image.asset(
              "lib/assets/community/zara.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
