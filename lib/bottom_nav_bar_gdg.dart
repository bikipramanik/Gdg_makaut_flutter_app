import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gdg_makaut/screens/event_screen.dart';
import 'package:gdg_makaut/screens/faq_screen.dart';
import 'package:gdg_makaut/screens/home_screen.dart';
import 'package:gdg_makaut/screens/resources_screen.dart';
import 'package:gdg_makaut/screens/team_screen.dart';
import 'package:gdg_makaut/widgets/appbar_widget.dart';

class BottomNavBarGDG extends StatefulWidget {
  const BottomNavBarGDG({super.key});

  @override
  State<BottomNavBarGDG> createState() => _BottomNavBarGDGState();
}

class _BottomNavBarGDGState extends State<BottomNavBarGDG> {
  int bottomNavBarIndex = 0;
  Widget appbarTitle = AppbarWidget();
  Widget currentScreen = HomeScreen();

  void changeScreen(int index) {
    setState(() {
      bottomNavBarIndex = index;
    });
    switch (index) {
      case 0:
        bottomNavBarIndex = 0;
        appbarTitle = AppbarWidget();
        currentScreen = HomeScreen();
      case 1:
        bottomNavBarIndex = 1;
        appbarTitle = Text("Event Screen");
        currentScreen = EventScreen();
      case 2:
        bottomNavBarIndex = 2;
        appbarTitle = Text("Resources Screen");
        currentScreen = ResourcesScreen();
      case 3:
        bottomNavBarIndex = 3;
        appbarTitle = AppbarWidget();
        currentScreen = TeamScreen();
      case 4:
        bottomNavBarIndex = 4;
        appbarTitle = Text("FAQ");
        currentScreen = FAQScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appbarTitle,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeScreen,
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomNavBarIndex,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.calendarCheck),
            label: "EVENTS",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.book),
            label: "RESOURCES",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.peopleGroup),
            label: "TEAM",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.question),
            label: "FAQ",
          ),
        ],
      ),
      drawer: Drawer(),
      body: currentScreen,
    );
  }
}
