import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class secondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _secondScreenState();
}

class _secondScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          color: Color.fromARGB(255, 37, 36, 36),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                fillColor: Color.fromARGB(255, 38, 35, 35),
                filled: true),
          ),
        ),
        StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 4,
          children: [
            Image(image: AssetImage('assets/images/boy2.jpg')),
            Image(image: AssetImage('assets/images/boy4.jpg')),
            Image(image: AssetImage('assets/images/girl1.jpg')),
            Image(image: AssetImage('assets/images/girl2.jpg')),
            Image(image: AssetImage('assets/images/girl3.jpg')),
            Image(image: AssetImage('assets/images/boy2.jpg')),
            Image(image: AssetImage('assets/images/girl7.jpg')),
            Image(image: AssetImage('assets/images/girl8.jpg')),
            Image(image: AssetImage('assets/images/boy12.jpg')),
            Image(image: AssetImage('assets/images/boy9.jpg')),
            Image(image: AssetImage('assets/images/girl9.jpg')),
            Image(image: AssetImage('assets/images/boy2.jpg')),
            Image(image: AssetImage('assets/images/boy12.jpg')),
            Image(image: AssetImage('assets/images/boy3.jpg')),
            Image(image: AssetImage('assets/images/girl9.jpg')),
            Image(image: AssetImage('assets/images/girl1.jpg')),
            Image(image: AssetImage('assets/images/boy9.jpg')),
            Image(image: AssetImage('assets/images/boy12.jpg')),
            Image(image: AssetImage('assets/images/boy3.jpg')),
            Image(image: AssetImage('assets/images/boy8.jpg')),
            Image(image: AssetImage('assets/images/boy11.jpg')),
            Image(image: AssetImage('assets/images/boy9.jpg')),
          ],
        )
      ]),
    );
  }
}
