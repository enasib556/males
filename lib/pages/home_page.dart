import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:males/widgets/catgory_container.dart';

import '../widgets/catgory_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Males',style: GoogleFonts.alkatra(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 30 ),),
        centerTitle: true,
        backgroundColor: const Color(0xFF00BDD3),
      ),
      body:  ListView.builder(
        itemCount: Catgories.length,
        itemBuilder: (context,index){
          return  CatgoryContainer(catgory: Catgories[index],
          );
        }
      ),
    );
  }
}
