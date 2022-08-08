import 'package:flutter/material.dart';
import 'package:insurego/resources/auth_methods.dart';
import 'package:insurego/scrEENS/rewards.dart';
import 'package:insurego/scrEENS/stcok_analysis.dart';
import 'package:insurego/screens/history_meeting_screen.dart';
import 'package:insurego/screens/meeting_screen.dart';
import 'package:insurego/utils/colors.dart';
import 'package:insurego/widgets/custom_buttom.dart';
import 'package:insurego/scrEENS/homepage.dart';

import 'academy.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    HomePage(),
    MeetingScreen(),
    StockAnalysis(),
    Academy(),
    const Rewards(),

    CustomButton(text: 'Log Out', onPressed: () => AuthMethods().signOut()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text('INSUREGO',
          style: TextStyle(
            fontFamily: 'Source Sans Pro',
            color: Colors.teal,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_call,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_business_outlined,
            ),
            label: 'Consultancy',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.analytics_sharp,
            ),
            label: 'Analysis',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on,
            ),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cast_for_education_sharp,
            ),
            label: 'Academy',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}


