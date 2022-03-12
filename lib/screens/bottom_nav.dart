import 'package:flutter/material.dart';
import 'alert.dart';
import 'home_screen.dart';
import 'location.dart';
import 'profile.dart';
import '../const.dart';
class BottomNav extends StatefulWidget {
  final int index;

  final ValueChanged<int> onTap;
  BottomNav({Key key, this.index, this.onTap}) : super(key: key);
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with SingleTickerProviderStateMixin {
  TabController tabController;
  int selectedIndex = 0;
  void onClickItem(int index){
    setState(() {
      selectedIndex = index;
      tabController.index;
    });
  }
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }
  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          HomePage(),
          AlertScreen(),
          LocationScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: containerColor,
        selectedItemColor: homeIconColor,
        unselectedItemColor: unselectedIconColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.warning),label: "Caution"),
          BottomNavigationBarItem(icon: Icon(Icons.location_on_sharp), label: "Location"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

        ],
      ),
    );
  }
}

