import 'package:flutter/material.dart';
import 'package:datatv/screens/getStarted.dart';
import 'package:datatv/theme.dart';
import 'package:get/get.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'datatv',
      theme: CustomTheme.theme(),
      home: StartScreen(),
    );
  }
}
