import 'package:flutter/material.dart';

class Homebottombar extends StatelessWidget {
  const Homebottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration:
          BoxDecoration(color: Colors.black.withOpacity(0.5), boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(255, 50, 54, 56),
          spreadRadius: 1,
          blurRadius: 5,
        ),
      ]),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: Colors.blue,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
