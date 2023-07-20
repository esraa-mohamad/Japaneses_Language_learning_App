import 'package:app_projects/componants/componants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NumbersScreen extends StatelessWidget {

List itemNumbers=[
  {'image':'assets/images/numbers/number_one.png',
    'title':'ichi',
    'numbers':'One',
    'sound' : 'sounds/numbers/number_one_sound.mp3',
  },
  {'image':'assets/images/numbers/number_two.png',
    'title':'Ni',
    'numbers':'Two',
    'sound' : 'sounds/numbers/number_two_sound.mp3',
  },
  {'image':'assets/images/numbers/number_three.png',
    'title':'san',
    'numbers':'Three',
    'sound' : 'sounds/numbers/number_three_sound.mp3',
  },
  {'image':'assets/images/numbers/number_four.png',
    'title':'shi',
    'numbers':'Four',
    'sound' : 'sounds/numbers/number_four_sound.mp3',
  },
  {'image':'assets/images/numbers/number_five.png',
    'title':'go',
    'numbers':'Five',
    'sound' : 'sounds/numbers/number_five_sound.mp3',
  },
  {'image':'assets/images/numbers/number_six.png',
    'title':'rocku',
    'numbers':'Six',
    'sound' : 'sounds/numbers/number_six_sound.mp3',
  },
  {'image':'assets/images/numbers/number_seven.png',
    'title':'sebun',
    'numbers':'Seven',
    'sound' : 'sounds/numbers/number_seven_sound.mp3',
  },
  {'image':'assets/images/numbers/number_eight.png',
    'title':'hachi',
    'numbers':'Eight',
    'sound' : 'sounds/numbers/number_eight_sound.mp3',
  },
  {'image':'assets/images/numbers/number_nine.png',
    'title':'kyu',
    'numbers':'Nine',
    'sound' : 'sounds/numbers/number_nine_sound.mp3',
  },
  {'image':'assets/images/numbers/number_ten.png',
    'title':'ju',
    'numbers':'Ten',
    'sound' : 'sounds/numbers/number_ten_sound.mp3',
  },
];

  NumbersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF49332A),
        title: const Text(
          'Numbers',
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
                    image: '${itemNumbers[index]['image']}',
                    jpTitle: '${itemNumbers[index]['title']}',
                    enName: '${itemNumbers[index]['numbers']}',
                    sound: '${itemNumbers[index]['sound']}'
                );
              },
        itemCount: itemNumbers.length,

      ),
    );
  }
}
