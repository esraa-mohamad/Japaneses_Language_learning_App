import 'package:app_projects/componants/componants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColorsScreen extends  StatelessWidget {
 List itemColors=[
   {
     'image':'assets/images/colors/color_black.png',
     'title':'Burakku',
     'colors':'Black',
     'sound':'sounds/colors/black.wav',
   },
   {
     'image':'assets/images/colors/color_brown.png',
     'title':'Chairo',
     'colors':'Brown',
     'sound':'sounds/colors/brown.wav',
   },
   {
     'image':'assets/images/colors/color_dusty_yellow.png',
     'title':'Hokori ppoi kiiro',
     'colors':'Dusty Yellow',
     'sound':'sounds/colors/dusty_yellow.wav',
   },
   {
     'image':'assets/images/colors/color_gray.png',
     'title':'Gure',
     'colors':'Gray',
     'sound':'sounds/colors/gray.wav',
   },
   {
     'image':'assets/images/colors/color_green.png',
     'title':'Midori',
     'colors':'Green',
     'sound':'sounds/colors/green.wav',
   },
   {
     'image':'assets/images/colors/color_red.png',
     'title':'Aka',
     'colors':'Red',
     'sound':'sounds/colors/red.wav',
   },
   {
     'image':'assets/images/colors/color_white.png',
     'title':'Burakku',
     'colors':'White',
     'sound':'sounds/colors/white.wav',
   },
   {
     'image':'assets/images/colors/yellow.png',
     'title':'Burakku',
     'colors':'Yellow',
     'sound':'sounds/colors/yellow.wav',
   },
 ];

  ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: const Color(0xFF49332A),
        title: const Text(
          'Colors',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context,index)
        {
          return  itemScreen(
              image: '${itemColors[index]['image']}',
              jpTitle: '${itemColors[index]['title']}',
              enName: '${itemColors[index]['colors']}',
              sound: '${itemColors[index]['sound']}'
          );
        },
        itemCount: itemColors.length,

      ),
    );
  }
}
