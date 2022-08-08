import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Image(
        image: AssetImage('assets/images/poto.png'),
        height: 80,
        width: 120,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 50, top: 10),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.keyboard_arrow_down_sharp,
              size: 30,
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 45),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              size: 30,
            )),
      ),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.messenger_outline,
            size: 30,
          )),
    ]);
  }
}
