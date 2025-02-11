import 'package:flutter/material.dart';
import 'package:males/Models/recipeModel.dart';
import 'package:males/Pages/detailsMalesPage.dart';

class RecipeContianer extends StatelessWidget {
  final RecipeModel recipe;
  const RecipeContianer({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 170,
        decoration: const BoxDecoration(
          color:Color(0xB8019786),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
          ),
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Image(image: AssetImage(recipe.image),fit: BoxFit.fill,height: 180,width: 120,),
            // const SizedBox(width: 20,),
             Text(recipe.name,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:16 ),),
            // const SizedBox(width: 20,),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>   Detailsmalespage(recipe: recipe,)));
            },icon:const Icon(Icons.arrow_forward,color: Colors.white,) )
          ],
        ),
      ),
    );
  }
}
