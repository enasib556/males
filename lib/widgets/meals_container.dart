import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:males/models/meal_model.dart';
import 'package:males/pages/details_meal_page.dart';

class MealsContainer extends StatelessWidget {
  final Meal meal;
  const MealsContainer({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: const BoxDecoration(
          color: Color(0xFF019689),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage(meal.imageUrl),
              width: 120,
              height: 180,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: Text(
                meal.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: GoogleFonts.alkatra(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>  DetailsMealPage(meal: meal,)));
              },
              icon: const Icon(Icons.arrow_forward),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
