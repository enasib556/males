import 'package:flutter/material.dart';

import '../Models/catgoryMalesModel.dart';
import 'catgory_container.dart';

List<CatgoryMalesModel> Males = [
  CatgoryMalesModel(
    catgoryImage: 'assets/images/chinsemales.webp',
    catgoryName: 'Chinese',
  ),
  CatgoryMalesModel(
      catgoryImage: 'assets/images/indian.jpg', catgoryName: 'Indian'),
  CatgoryMalesModel(
      catgoryImage: 'assets/images/oriental meals.jpg',
      catgoryName: 'Oriental Meals'),
  CatgoryMalesModel(
      catgoryImage: 'assets/images/pasta.jpg', catgoryName: 'Pasta')
];

class Listcatgory extends StatelessWidget {
  const Listcatgory({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: Males.length,
        itemBuilder: (BuildContext context,num) {
          return CatgoryContainer(catgory: Males[num],);
        },
      ),
    );
  }
}
