import 'package:flutter/material.dart';
import 'package:males/Models/catgoryMalesModel.dart';
import 'package:males/widgets/listRecipe.dart';

class Mealspage extends StatelessWidget {
  final CatgoryMalesModel catgory;
  const Mealspage({super.key, required this.catgory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          catgory.catgoryName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Listrecipe(catgory: catgory),
    );
  }
}
