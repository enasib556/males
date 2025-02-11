import 'package:flutter/material.dart';
import 'package:males/Models/recipeModel.dart';
import 'package:males/widgets/recipe_contianer.dart';
import '../Models/catgoryMalesModel.dart';

class Listrecipe extends StatelessWidget {
  final CatgoryMalesModel catgory;
  const Listrecipe({super.key, required this.catgory});

  @override
  Widget build(BuildContext context) {
    List<RecipeModel> recipes = [];

    if (catgory.catgoryName == "Chinese") {
      recipes = [
        RecipeModel(image: 'assets/images/noodles.png', name: 'Noodles', salary: 50, time:30),
        RecipeModel(image: 'assets/images/dumplings.png', name: 'Dumplings', salary: 70, time: 40),
        RecipeModel(image: 'assets/images/sweet_sour_chicken.png', name: 'Sweet & Sour Chicken', salary: 90, time: 45),
        RecipeModel(image: 'assets/images/fried_rice.png', name: 'Fried Rice', salary: 60, time:25),
      ];
    } else if (catgory.catgoryName == "Indian") {
      recipes = [
        RecipeModel(image: 'assets/images/biryani.png', name: 'Biryani', salary: 80, time:50),
        RecipeModel(image: 'assets/images/butter_chicken.png', name: 'Butter Chicken', salary: 100, time: 45),
        RecipeModel(image: 'assets/images/samosa.png', name: 'Samosa', salary: 40, time: 20),
        RecipeModel(image: 'assets/images/palak_paneer.png', name: 'Palak Paneer', salary: 90, time: 35),
      ];
    }else if (catgory.catgoryName == "Oriental Meals") {
      recipes = [
        RecipeModel(image: 'assets/images/koshary.jpg', name: 'Koshary', salary: 30, time: 20),
        RecipeModel(image: 'assets/images/shawarma.jpg', name: 'Shawarma', salary: 60, time: 25),
        RecipeModel(image: 'assets/images/mahshi.jpg', name: 'Mahshi', salary: 50, time: 40),
        RecipeModel(image: 'assets/images/falafel.jpg', name: 'Falafel', salary: 20, time: 15),
      ];
    }else if (catgory.catgoryName == "Pasta") {
      recipes = [
        RecipeModel(image: 'assets/images/spaghetti.jpg', name: 'Spaghetti Bolognese', salary: 70, time: 35),
        RecipeModel(image: 'assets/images/alfredo.jpg', name: 'Chicken Alfredo', salary: 85, time: 30),
        RecipeModel(image: 'assets/images/lasagna.jpg', name: 'Lasagna', salary: 100, time: 50),
        RecipeModel(image: 'assets/images/mac_cheese.jpg', name: 'Mac & Cheese', salary: 60, time: 25),
      ];
    }
    return ListView.builder(
      itemCount: recipes.length,
      itemBuilder: (BuildContext context, int index) {
        return RecipeContianer(recipe: recipes[index]);
      },
    );
  }
}
