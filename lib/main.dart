import 'package:flutter/material.dart';
import 'package:start_web_app_now/Pages/home_page.dart';

void main() {
  runApp(const StartPoint());
}

class StartPoint extends StatelessWidget {
  const StartPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
