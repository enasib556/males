import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:males/models/catgory_model.dart';

import '../widgets/meal_list.dart';
import '../widgets/meals_container.dart';

class MealsPage extends StatelessWidget {
  final Catgory catgory;
  const MealsPage({super.key, required this.catgory});

  @override
  Widget build(BuildContext context) {
    final filteredMeals = Meals.where((meal) => meal.categoryId == catgory.id).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          catgory.title,
          style: GoogleFonts.alkatra(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 26
          ),
        ),
      ),
      body: filteredMeals.isEmpty
          ? const Center(
        child: Text(
          "no meals found",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      )
          : ListView.builder(
        itemCount: filteredMeals.length,
        itemBuilder: (context, index) {
          return MealsContainer(meal: filteredMeals[index]);
        },
      ),
    );
  }
}
