import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:friday/screens/homepage.dart';

void main() {
  runApp(DevicePreview(
    isToolbarVisible: false,
    enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomePage(),
    );
  }
}
