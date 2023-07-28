import 'package:flutter/material.dart';
import 'package:friday/screens/secondscree.dart';
import 'package:friday/utils/colors.dart';
import 'package:friday/widgets/bnb.dart';
import 'package:friday/widgets/detailcard.dart';
import 'package:friday/widgets/detailslider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched = false;
  double? newvalue;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.white),
        title: Text(
          'BedRoom',
          style: GoogleFonts.manrope(
              textStyle: const TextStyle(
                  fontSize: 17,
                  color: whiteColor,
                  fontWeight: FontWeight.w600)),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.notifications_none_rounded,
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/1.png'),
                const Positioned(
                  top: 370,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DetailCard(
                        title: '36%',
                        imgurl: 'humidity',
                        subtitle: 'Humidifier\nAir',
                      ),
                      SizedBox(width: 12),
                      DetailCard(
                        title: '76%',
                        imgurl: 'clean',
                        subtitle: 'Purifier\nAir',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                const Positioned(
                    top: 590, left: 20, right: 20, child: DetailSlider()),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: bnB(
        selectedIndex: selectedIndex ?? 0,
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
