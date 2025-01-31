import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SingleItemsScreen extends StatelessWidget {
  String img;
  SingleItemsScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 30, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                "Images/$img.png",
                width: MediaQuery.of(context).size.width / 1.2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Best Bottle',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          letterSpacing: 3),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      img,
                      style: const TextStyle(
                        fontSize: 30,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white.withOpacity(0.2),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Text(
                          '\$50.20',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Water in Take is Very Important in our daily life. Water is the the most importent drink. Just one Sip to yourself",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.4)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Volume :",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        " 30 ml",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.4)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 50, 54, 56),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: Colors.black,
                                )),
                          ]),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    ));
  }
}
