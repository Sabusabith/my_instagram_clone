import 'package:flutter/material.dart';
import 'package:insta_clone/Homescreen.dart';
import 'package:insta_clone/appbar.dart';
import 'package:insta_clone/postes.dart';
import 'package:insta_clone/second_screen.dart';

void main() {
  runApp(MaterialApp(home: Insta()));
}

class Insta extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InstaState();
}

class _InstaState extends State {
  int curent_intex = 0;

  void onTap(int intex) {
    setState(() {
      curent_intex = intex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, title: appbar()),
      body: IndexedStack(
        index: curent_intex,
        children: [
          ListView(
            children: [
              Container(
                color: Color.fromARGB(255, 33, 28, 28),
                width: 800,
                height: 1,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              homescreen(),
              Container(
                color: Color.fromARGB(255, 33, 28, 28),
                width: 800,
                height: 1,
                child: Divider(
                  color: Color.fromARGB(255, 53, 48, 48),
                ),
              ),
              postes(),
            ],
          ),
          secondScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 33,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 33,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection_outlined,
                color: Colors.white,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
              label: '')
        ],
        currentIndex: curent_intex,
        onTap: onTap,
      ),
    );
  }
}
