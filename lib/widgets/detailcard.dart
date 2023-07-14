import 'package:flutter/material.dart';
import 'package:friday/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCard extends StatefulWidget {
  const DetailCard(
      {super.key,
      required this.title,
      required this.imgurl,
      required this.subtitle});
 final String title;
  final String imgurl;
  final String subtitle;
  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 198,
      width: 169,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: secblackColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(height: 16),
              Text(
                widget.title,
                style: GoogleFonts.manrope(
                  textStyle: const TextStyle(
                      fontSize: 32,
                      color: whiteColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(width: 35),
              Image.asset(
                'assets/images/${widget.imgurl}.png',
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            widget.subtitle,
            style: GoogleFonts.manrope(
              textStyle: const TextStyle(
                fontSize: 12,
                color: whiteColor,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: 129,
            height: 1,
            decoration: const BoxDecoration(color: greyColor),
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              Text(
                'Mode 2',
                style: GoogleFonts.manrope(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    color: whiteColor,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
              const SizedBox(width: 25),
              Switch(
                // thumb color (round icon)
                activeColor: secblackColor,
                activeTrackColor: yellowColor,
                inactiveThumbColor: mainColor,
                inactiveTrackColor: greyColor,
                splashRadius: 20.0,
                // boolean variable value
                value: isSwitched,
                // changes the state of the switch
                onChanged: (value) {
                  print("VALUE : $value");
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
