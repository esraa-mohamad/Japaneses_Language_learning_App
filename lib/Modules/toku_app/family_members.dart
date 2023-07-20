import 'package:app_projects/componants/componants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FamilyMembers extends  StatelessWidget {
  List itemFamily=[
    {'image':'assets/images/family_members/family_father.png',
      'title':'Chichioye',
      'family':'Father',
      'sound' : 'sounds/family_members/father.wav',
    },
    {'image':'assets/images/family_members/family_mother.png',
      'title':'Hahaoya',
      'family':'Mother',
      'sound' : 'sounds/family_members/mother.wav',
    },
    {'image':'assets/images/family_members/family_daughter.png',
      'title':'Musume',
      'family':'Daughter',
      'sound' : 'sounds/family_members/daughter.wav',
    },
    {'image':'assets/images/family_members/family_son.png',
      'title':'Musuko',
      'family':'Son',
      'sound' : 'sounds/family_members/son.wav',
    },
    {'image':'assets/images/family_members/family_grandfather.png',
      'title':'Ojisan',
      'family':'Grand Father',
      'sound' : 'sounds/family_members/grand_father.wav',
    },
    {'image':'assets/images/family_members/family_grandmother.png',
      'title':'Sobo',
      'family':'Grand Mother',
      'sound' : 'sounds/family_members/grand_mother.wav',
    },
    {'image':'assets/images/family_members/family_older_brother.png',
      'title':'Nisan',
      'family':'Older Brother',
      'sound' : 'sounds/family_members/older_bother.wav',
    },
    {'image':'assets/images/family_members/family_older_sister.png',
      'title':'Ane',
      'family':'Older Sister',
      'sound' : 'sounds/family_members/older_sister.wav',
    },
    {'image':'assets/images/family_members/family_younger_brother.png',
      'title':'Ototo',
      'family':'Younger Brother',
      'sound' : 'sounds/family_members/younger_brohter.wav',
    },
    {'image':'assets/images/family_members/family_younger_sister.png',
      'title':'Imoto',
      'family':'Younger Sister',
      'sound' : 'sounds/family_members/younger_sister.wav',
    },
  ];

  FamilyMembers({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: const Color(0xFF49332A),
        title: const Text(
          'Family Members',
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
              image: '${itemFamily[index]['image']}',
              jpTitle: '${itemFamily[index]['title']}',
              enName: '${itemFamily[index]['family']}',
              sound: '${itemFamily[index]['sound']}'
          );
        },
        itemCount: itemFamily.length,

      ),
    );
  }
}
