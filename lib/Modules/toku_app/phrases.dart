import 'package:app_projects/componants/componants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PhrasesScreen extends  StatelessWidget {
  List itemPhrases= [
    {
      'title':'Kōdoku suru koto o wasurenaide kudasai',
      'phrases':"Don't forget to subscribe",
      'sound':'sounds/phrases/dont_forget_to_subscribe.wav',
    },
    {
      'title':'Watashi wa puroguramingu daisukidesu',
      'phrases':"I love  programming",
      'sound':'sounds/phrases/i_love_programming.wav',
    },
    {
      'title':'Puroguramingu wa kantandesu',
      'phrases':"Programming is easy",
      'sound':'sounds/phrases/programming_is_easy.wav',
    },
    {
      'title':'Doko ni iku no',
      'phrases':"Where are you going",
      'sound':'sounds/phrases/where_are_you_going.wav',
    },
    {
      'title':'Namae wa nandesu ka',
      'phrases':"What is your name ?",
      'sound':'sounds/phrases/what_is_your_name.wav',
    },
    {
      'title':'Watashi wa anime ga daisukidesu',
      'phrases':"I love anime",
      'sound':'sounds/phrases/i_love_anime.wav',
    },
    {
      'title':'Go kibun wa ikagadesu ka',
      'phrases':"How are you feeling?",
      'sound':'sounds/phrases/how_are_you_feeling.wav',
    },
    {
      'title':'Kimasu ka',
      'phrases':"Are you coming?",
      'sound':'sounds/phrases/are_you_coming.wav',
    },
    {
      'title':'Hai watashi wa kite imasu',
      'phrases':"Yes i am coming",
      'sound':'sounds/phrases/yes_im_coming.wav',
    },
  ];

  PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: const Color(0xFF49332A),
        title: const Text(
          'Phrases',
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
          return itemScreenPhrases(
            sound: '${itemPhrases[index]['sound']}',
              jpTitle: '${itemPhrases[index]['title']}',
              enName: '${itemPhrases[index]['phrases']}'
          );
        },
        itemCount: itemPhrases.length,

      ),
    );
  }
}
