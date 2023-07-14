import 'package:flutter/material.dart';
import 'package:friday/screens/homepage.dart';
import 'package:friday/screens/secondscree.dart';
import 'package:friday/utils/colors.dart';


Widget bnB({void Function(int)? ontap, required int selectedIndex}) {
  return BottomNavigationBar(
      backgroundColor: mainColor,
      type: BottomNavigationBarType.fixed, // Fixed
      elevation: 0,
      selectedItemColor: yellowColor,
      unselectedItemColor:greyColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 30,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.house_outlined),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_comfy_alt_rounded),
          label: 'account',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person_4_outlined), label: 'settings')
      ],
      currentIndex: selectedIndex, //New

      onTap: ontap);
}

List<Widget> pageList = [
  const HomePage(),
  
  const Second(),
  // const Account(),
];
