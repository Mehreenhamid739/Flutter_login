import 'package:coffee_page/widget/homebuttonbar.dart';
import 'package:coffee_page/widget/items_widget.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.sort_rounded,
                      color: Colors.white.withOpacity(0.6),
                      size: 35,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white.withOpacity(0.6),
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "It's a Great Day for Water",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: MediaQuery.of(context).size.width,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 50, 54, 56),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Find your favourite..",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: Icon(Icons.search,
                          size: 30, color: Colors.white.withOpacity(0.6))),
                ),
              ),
            ),
            TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white.withOpacity(0.6),
                isScrollable: true,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3, color: Colors.blue),
                  insets: EdgeInsets.symmetric(horizontal: 16),
                ),
                tabs: const [
                  Tab(
                    text: "Hot & Cool",
                  ),
                  Tab(
                    text: "Summer",
                  ),
                  Tab(
                    text: "Winter",
                  ),
                  Tab(
                    text: "Stylish",
                  ),
                ]),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: [
                ItemsWidget(),
                ItemsWidget(),
                ItemsWidget(),
                ItemsWidget(),
              ][_tabController.index],
            )
          ]),
        ),
      ),
      bottomNavigationBar: Homebottombar(),
    );
  }
}
