import 'package:flutter/material.dart';
import 'package:insta_clone/Homescreen.dart';
import 'package:insta_clone/appbar.dart';

class homescreen extends StatelessWidget {
  Widget containers({required image}) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(shape: BoxShape.circle, image: image),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 14, 13, 13),
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            containers(
                image: DecorationImage(
                    image: AssetImage('assets/images/boy.jpg'))),
            SizedBox(width: 10),
            containers(
                image: DecorationImage(
                    image: AssetImage('assets/images/boy2.jpg'))),
            SizedBox(width: 10),
            containers(
                image: DecorationImage(
                    image: AssetImage('assets/images/boy3.jpg'))),
            SizedBox(width: 10),
            containers(
                image: DecorationImage(
                    image: AssetImage('assets/images/girl1.jpg'))),
            SizedBox(width: 10),
            containers(
                image: DecorationImage(
                    image: AssetImage('assets/images/girl2.jpg'))),
            SizedBox(width: 10),
            containers(
                image: DecorationImage(
                    image: AssetImage('assets/images/girl3.jpg'))),
            SizedBox(width: 10),
            containers(
                image: DecorationImage(
                    image: AssetImage('assets/images/boy4.jpg'))),
            SizedBox(width: 10),
            containers(
                image: DecorationImage(
                    image: AssetImage('assets/images/boy5.jpg'))),
            SizedBox(width: 10),
            containers(
                image: DecorationImage(
                    image: AssetImage('assets/images/boy6.jpg'))),
            SizedBox(width: 10),
            containers(
                image: DecorationImage(
                    image: AssetImage('assets/images/boy8.jpg'))),
            SizedBox(width: 10),
            containers(
                image: DecorationImage(
                    image: AssetImage('assets/images/boy9.jpg'))),
          ],
        ),
      ),
    );
  }
}
