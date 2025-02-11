import 'package:flutter/material.dart';
import 'package:males/Pages/homePage.dart';

void main()
{
  runApp(const MalesApp());
}
class MalesApp extends StatelessWidget {
  const MalesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage()
    );
  }
}
