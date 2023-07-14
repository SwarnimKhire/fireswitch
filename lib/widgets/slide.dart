import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friday/utils/colors.dart';
import 'package:friday/utils/textstyles.dart';

class Slide extends StatelessWidget {
  Slide(
      {super.key,
      required this.imgUrl,
      required this.onchanged,
      required this.title,
      required this.value
      });
  String title;
  String imgUrl;
  double value;
  void Function(double)? onchanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: ftextStyle(12, whiteColor, FontWeight.w500)),
            const SizedBox(height: 7),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: yellowColor,
                inactiveTrackColor: greyColor,
                trackShape: const RectangularSliderTrackShape(),
                trackHeight: 7.0,
                thumbColor: whiteColor,
                thumbShape:
                    const RoundSliderThumbShape(enabledThumbRadius: 10.0),
                overlayColor: greyColor,
                overlayShape:
                    const RoundSliderOverlayShape(overlayRadius: 20.0),
              ),
              child: SizedBox(
                width: 250,
                child: Slider(
                  max: 100,
                  min: 0,
                  value: value,
                  onChanged: onchanged,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Image.asset('assets/images/$imgUrl.png')
      ],
    );
  }
}
//  onChanged: (value) {
//                   setState(() {
//                     newvalue = value;
//                   });
//                 },