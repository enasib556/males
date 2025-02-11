import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:males/pages/meals_page.dart';

import '../models/catgory_model.dart';

class CatgoryContainer extends StatelessWidget {
  final Catgory catgory;
  const CatgoryContainer({super.key, required this.catgory});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 25),
      child: InkWell(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MealsPage(catgory: catgory)));},
        child: Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(14),
            image:  DecorationImage(image: AssetImage(catgory.imageUrl)
                ,fit:BoxFit.fill,opacity: 0.6
            ),
          ),
          child: Center(child: Text(catgory.title,style: GoogleFonts.alkatra(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 30 ),)),
        ),
      ),
    );
  }
}
