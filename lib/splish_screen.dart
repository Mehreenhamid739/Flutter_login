import 'package:coffee_page/home.dart';
import 'package:flutter/material.dart';

class Splishscreen extends StatefulWidget {
  const Splishscreen({super.key});

  @override
  State<Splishscreen> createState() => _SplishscreenState();
}

class _SplishscreenState extends State<Splishscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 50),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: NetworkImage(
                    'https://monos.com/cdn/shop/products/Kiyo-UVC-Bottle-500ml-Blue-Hour_900x.png'),
                fit: BoxFit.contain,
                opacity: 0.5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Text(
                'Water Bottle',
                style: GoogleFonts.pacifico(
                  color: Colors.white,
                  fontSize: 70,
                ),
              ),
            ),
            Column(
              children: [
                const Text(
                  'Feeling Low? Take a Sip of Water',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                ),
                const SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homescreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Get Start',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GoogleFonts {
  static pacifico({required Color color, required int fontSize}) {}
}
