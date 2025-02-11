import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsContainer extends StatelessWidget {
  final String title;
  final double width;
  const DetailsContainer({super.key, required this.title, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8),
        border: Border.all(color: Colors.white,width: 0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Text(title,style: GoogleFonts.alkatra(color: Colors.white,fontSize: 20 ),)),
    );
  }
}
