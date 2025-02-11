import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:males/widgets/details_container.dart';

import '../models/meal_model.dart';

class DetailsMealPage extends StatelessWidget {
  final Meal meal;
  const DetailsMealPage({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
          style: GoogleFonts.alkatra(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          color: Colors.black,
          image:  DecorationImage(image: AssetImage(meal.imageUrl)
              ,fit:BoxFit.fill,opacity: 0.8,
          ),
        ),
        child: Center(
          child: Container(
            width: MediaQuery.sizeOf(context).width*0.9,
            height:300 ,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              border: Border.all(color: Colors.white,width: 0.2),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name of The Meal',style: GoogleFonts.alkatra(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  DetailsContainer(title: meal.title, width: 200),
                  const SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Salary',style: GoogleFonts.alkatra(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),),
                      DetailsContainer(title: meal.salary.toString(), width: 80)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Time of the end',style: GoogleFonts.alkatra(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.bold),),
                      DetailsContainer(title: meal.salary.toString(), width: 80)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
