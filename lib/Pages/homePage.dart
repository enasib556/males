import 'package:flutter/material.dart';
import '../widgets/listCatgory.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Males',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
        backgroundColor: const Color(0xFF00BDD3),
      ),
      body:const  Padding(
        padding:  EdgeInsets.all(27.0),
        child: Column(
          children: [
            Listcatgory()

          ],
        ),
      ),
    );
  }
}
