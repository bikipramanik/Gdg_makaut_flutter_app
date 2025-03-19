import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SponserCurosoul extends StatelessWidget {
  const SponserCurosoul({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          height: 150,
          width: 290,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "lib/assets/sponsers_images/Gucci.jpeg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          height: 150,
          width: 290,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "lib/assets/sponsers_images/meta.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          height: 150,
          width: 290,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "lib/assets/sponsers_images/Nvidiafeature1.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 150,
          width: 290,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "lib/assets/sponsers_images/rockstar.jpeg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 150,
          width: 290,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "lib/assets/sponsers_images/Samsung.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 150,
          width: 290,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "lib/assets/sponsers_images/Tesla.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        animateToClosest: true,
        height: MediaQuery.of(context).size.height * 0.2,
        autoPlay: true,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        viewportFraction: 0.7,
        enlargeFactor: 0.2,
      ),
    );
  }
}
