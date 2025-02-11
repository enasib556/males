import 'package:flutter/material.dart';

class Containerdetails extends StatelessWidget {
  final String text;
  final double width;
  const Containerdetails({super.key,required this.text, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white, width: 0.1),
      ),
      child: Center(child: Text(text,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
    );
  }
}
