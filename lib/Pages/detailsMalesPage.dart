import 'package:flutter/material.dart';

import '../Models/recipeModel.dart';
import '../widgets/containerDetails.dart';

class Detailsmalespage extends StatelessWidget {
  final RecipeModel recipe;
  const Detailsmalespage ({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(recipe.name,style:const TextStyle(fontWeight: FontWeight.bold),),
      ),
      body:Container(
        decoration:  BoxDecoration(
          image: DecorationImage(image: AssetImage(recipe.image),fit: BoxFit.fill,opacity: 0.6
          ),
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 300,
                decoration: BoxDecoration(
                  color:Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Colors.white,
                    width: 0.1
                  ),
                ),
                child: Padding(
                  padding:  const EdgeInsets.only(left: 25,right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       const Text('Name of The Dish',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),),
                      const SizedBox(height: 5,),
                      Containerdetails(text: recipe.name, width: 180,),
                      const SizedBox(height: 20,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Salary',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                          Containerdetails(text: '${recipe.salary}', width: 90,),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Time of the end',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                          Containerdetails(text: '${recipe.time}', width: 90,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
