import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spik_app/bottom_nav_pages/homepage.dart';
import 'package:spik_app/bottom_nav_pages/orders_page.dart';
import 'package:spik_app/bottom_nav_pages/profile_page.dart';
import 'package:spik_app/widgets/color.dart';
import 'package:spik_app/widgets/custom_text.dart';
import 'package:spik_app/widgets/menu_bar/menu_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List pages = [
    HomePage(),
    OrdersPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuNavBar(),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: AppColor.firstPage,
        elevation: 0,
        title: Row(
          children: [
            Expanded(child: Container()),
            Container(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                child: Image.asset('images/spikk-logo.png')),
            Expanded(child: Container()),
            Container(
              // margin: EdgeInsets.only(top: 20, left: 20),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: AppColor.selectBackground,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                padding: EdgeInsets.only(bottom: 2, top: 1),
                onPressed: () => Get.back(),
                icon: Image.asset('images/chat.png'),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColor.firstPage,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          enableFeedback: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColor.firstPage,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(color: AppColor.iconButtonBackground),
          unselectedLabelStyle: TextStyle(color: AppColor.iconButtonBackground),
          elevation: 10,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: currentIndex,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Image.asset(
                'images/home.png',
                color: AppColor.iconButtonBackground,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Orders',
              icon: Image.asset(
                'images/cart.png',
                color: AppColor.iconButtonBackground,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Image.asset(
                'images/icon1.png',
                color: AppColor.iconButtonBackground,
              ),
            ),
          ]),
    );
  }
}
