import 'package:flutter/material.dart';
import 'package:males/Pages/mealsPage.dart';

import '../Models/catgoryMalesModel.dart';

class CatgoryContainer extends StatelessWidget {
  final CatgoryMalesModel catgory;
  const CatgoryContainer({super.key,required this.catgory});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:15),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Mealspage(catgory: catgory,)));
        },
        child: Container(
          width:MediaQuery.sizeOf(context).width,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(image: AssetImage(catgory.catgoryImage),
                fit: BoxFit.fill, opacity:0.7,
              )
          ),
          child:  Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Text(catgory.catgoryName,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color:Colors.white),),
          ),
        ),
      ),
    );
  }
}
