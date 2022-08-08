import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class postes extends StatelessWidget {
  Widget page(
      {required avatarimg,
      required sizedboximg,
      required likes,
      required name}) {
    return Container(
      width: 800,
      height: 602,
      color: Color.fromARGB(255, 15, 14, 11),
      child: Stack(
        children: [
          const Positioned(
            top: 5,
            left: 5,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.pink,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: CircleAvatar(
              backgroundImage: avatarimg,
            ),
          ),
          const Positioned(
            top: 5,
            left: 340,
            child: RotatedBox(
              quarterTurns: 1,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_control,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ),
          ),
          Positioned(
            top: 80,
            child: SizedBox(
              height: 400,
              width: 400,
              child: Image(
                image: sizedboximg,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 65,
            child: Text(
              name,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Positioned(
            top: 500,
            child: IconButton(
              splashRadius: 30,
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          Positioned(
            top: 503,
            left: 58,
            child: IconButton(
              splashRadius: 30,
              onPressed: () {},
              icon: Icon(
                Icons.mode_comment_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Positioned(
            top: 503,
            left: 115,
            child: IconButton(
              splashRadius: 30,
              onPressed: () {},
              icon: Icon(
                Icons.send_sharp,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Positioned(
            top: 503,
            left: 330,
            child: IconButton(
              splashRadius: 30,
              onPressed: () {},
              icon: Icon(
                Icons.save_alt_sharp,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          Positioned(
              top: 555,
              left: 10,
              child: Text(
                likes,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              )),
          Positioned(
              top: 580,
              left: 10,
              child: Text(
                'View all 42 comments',
                style: TextStyle(
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        page(
            avatarimg: AssetImage('assets/images/boy2.jpg'),
            sizedboximg: AssetImage('assets/images/boy2.jpg'),
            likes: '1,198 likes',
            name: 'Aman_Zayn'),
        page(
            avatarimg: AssetImage('assets/images/boy4.jpg'),
            sizedboximg: AssetImage('assets/images/boy4.jpg'),
            likes: '1,117 likes',
            name: 'John Don'),
        page(
            avatarimg: AssetImage('assets/images/girl2.jpg'),
            sizedboximg: AssetImage('assets/images/girl2.jpg'),
            likes: '2,198likes',
            name: 'zara_langford'),
        page(
            avatarimg: AssetImage('assets/images/girl3.jpg'),
            sizedboximg: AssetImage('assets/images/girl3.jpg'),
            likes: '2,215 likes',
            name: 'Tessa_roy'),
        page(
            avatarimg: AssetImage('assets/images/girl4.jpg'),
            sizedboximg: AssetImage('assets/images/girl4.jpg'),
            likes: '1,198 likes',
            name: 'Lissa_lizz')
      ],
    );
  }
}
