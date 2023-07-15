import 'package:flutter/material.dart';
import 'package:friday/screens/homepage.dart';
import 'package:friday/utils/colors.dart';
import 'package:friday/utils/textstyles.dart';
import 'package:friday/widgets/bnb.dart';
import 'package:friday/widgets/product.dart';
import 'package:google_fonts/google_fonts.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Text(
                    'Search',
                    style: ftextStyle(32, whiteColor, FontWeight.w600),
                  ),
                  const Spacer(),
                  Text(
                    'wknvljv78knj44',
                    style: ftextStyle(14, whiteColor, FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                '3 New devices',
                style: ftextStyle(17, whiteColor, FontWeight.w400),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                spacing: 10,
                runSpacing: 12,
                children: [
                  Product(
                    img: 'Bork',
                    subtitle: 'Vaccum Cleaner',
                    title: 'Bork V350',
                    color: whiteColor,
                  ),
                  Product(
                    img: 'torch',
                    subtitle: 'Smart Bulb',
                    title: 'LIFX LED Light',
                    color: whiteColor,
                  ),
                  Product(
                    img: 'xiomi',
                    subtitle: 'Humidifier',
                    title: 'Xiaomi DEM-F600',
                    color: whiteColor,
                  ),
                  Product(
                    img: 'Wifi',
                    subtitle: 'Select manually',
                    title: 'Not found device?',
                    color: yellowColor,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 115),
            Center(
              child: Container(
                alignment: Alignment.center,
                width: 350,
                height: 63,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: yellowColor),
                child: Text(
                  'Add Device',
                  style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
          ]),
      bottomNavigationBar: bnB(
        selectedIndex: selectedIndex,
        ontap: (index) {
          switch (index) {
            case 0:
            
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Second()));
              break;
          }
          setState(() {
            selectedIndex = index;
          
          });
        },
      ),
    );
  }
}
