import 'package:app_projects/Modules/toku_app/colors.dart';
import 'package:app_projects/Modules/toku_app/family_members.dart';
import 'package:app_projects/Modules/toku_app/numbers.dart';
import 'package:app_projects/Modules/toku_app/phrases.dart';
import 'package:flutter/material.dart';
import 'package:app_projects/componants/componants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF49332A),
        title: const Text(
          'Toku App',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          categoryHome(
            title: 'Numbers',
            backColor: const Color(0xffF99531),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  NumbersScreen(),
                ),
              );
            },
          ),
          categoryHome(
            title: 'Family Members',
            backColor: const Color(0xff528032),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  FamilyMembers(),
                ),
              );
            },
          ),
          categoryHome(
            title: 'Colors',
            backColor: const Color(0xff7D40A2),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  ColorsScreen(),
                ),
              );
            },
          ),
          categoryHome(
            title: 'Phrases',
            backColor: const Color(0xff47A5CB),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  PhrasesScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
