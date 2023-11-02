import 'package:flutter/material.dart';
import 'package:task_one/Core/Styles/App_Colors.dart';
import 'package:task_one/Core/Styles/text_Style.dart';
import 'Widgets/HomeScreenBody.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.white.withOpacity(0.25),
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Text(
            "Home",
            style: Txtstyle.style20(context: context)
                .copyWith(color: Colors.black),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationbar(),
        body: const HomeScreenBody());
  }

  // ignore: non_constant_identifier_names
  BottomNavigationBar BottomNavigationbar() {
    return BottomNavigationBar(
      selectedIconTheme: const IconThemeData(color: AppColors.kRedColor),
      selectedLabelStyle: const TextStyle(color: AppColors.kRedColor),
      showUnselectedLabels: true,
      selectedItemColor: AppColors.kRedColor,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      currentIndex: _currentIndex,
      onTap: _onTabTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assessment_rounded),
          label: 'Assets',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.support_agent),
          label: 'Support',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
