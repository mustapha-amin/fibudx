import 'package:fibudx/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.material(
      home: Homepage(),
      // theme: ShadThemeData(
      //   colorScheme: ShadColorScheme.fromName("green"),
      //   brightness: Brightness.dark,

      // ),
    );
  }
}
