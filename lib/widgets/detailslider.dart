import 'package:flutter/material.dart';
import 'package:friday/utils/colors.dart';
import 'package:friday/widgets/slide.dart';

class DetailSlider extends StatefulWidget {
  const DetailSlider({super.key});

  @override
  State<DetailSlider> createState() => _DetailSliderState();
}

class _DetailSliderState extends State<DetailSlider> {
  double newvalue = 0;
  double nvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        height: 174,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: secblackColor),
        child: Column(
          children: [
            Slide(
              title: 'Main Light',
              imgUrl: 'Lamp',
              value: newvalue,
              onchanged: (value) {
                setState(() {
                  newvalue = value;
                });
              },
            ),
            const SizedBox(height: 8),
            Slide(
                imgUrl: 'Tablelamp',
                value: nvalue,
                onchanged: (value) {
                  setState(() {
                    nvalue = value;
                  });
                },
                title: 'Floor Lamp')
          ],
        ));
  }
}
