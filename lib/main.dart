import 'package:flutter/material.dart';
import 'package:note_app_api/ScreenHome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     home: ScreenHome(),
    );
  }
}
