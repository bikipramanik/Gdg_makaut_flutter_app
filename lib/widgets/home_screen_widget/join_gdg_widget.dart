import 'package:flutter/material.dart';

class JoinGdgWidget extends StatelessWidget {
  const JoinGdgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 255, 244, 144),
        ),
        padding: EdgeInsets.all(15),
        // height: 400,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              "Welcome to GDG on Campus, MAKAUT! 🚀 ",
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              textAlign: TextAlign.center,
              "Dive into a vibrant community where innovation meets opportunity. From hands-on workshops and expert talks to exciting giveaways and networking with like-minded tech enthusiasts, there’s something for everyone. Join us in Haringhata, Nadia, and be part of a movement that’s shaping the future of technology. Let’s learn, build, and grow together—click ‘Join Now’ to start your journey! 🎉",
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 140, 203, 255),
                minimumSize: Size(200, 50),
              ),
              onPressed: () {},
              child: Text(
                "JOIN NOW",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
