import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// toku app _ home page _ container of category

Widget categoryHome({
  required String title,
  required Color backColor,
  required Function() onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      color: backColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

// toku app _  screens  _ container of item

Widget itemScreen ({
  required String image,
  required String jpTitle,
  required String enName,
  required String sound,
})
{
  return Container(
    height: 100,
    color: const Color(0xffF99531),
    child: Row(
      children: [
        Container(
          color: const Color(0xffFFF4D9),
          child: Image.asset(image),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
              jpTitle,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,

              ),
            ),
            Text(
              enName,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,

              ),
            ),
          ],
        ),
        const Spacer(flex: 1,),
        IconButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource(sound));
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 32,
          ),
        ),
      ],
    ),
  );
}


Widget  itemScreenPhrases ({
  required String jpTitle,
  required String enName,
  required String sound,
})
{
  return Container(
    height: 100,
    color: const Color(0xff47A5CB),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text(
                jpTitle,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                softWrap: false,
                maxLines: 1,
                overflow: TextOverflow.fade,
              ),
              Text(
               enName,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,

                ),
              ),
            ],
          ),
        ),

        IconButton(
          onPressed: (){
            final player = AudioPlayer();
             player.play(AssetSource(sound));

          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 32,
          ),
        ),
      ],
    ),
  );
}