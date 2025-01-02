import 'package:flutter/material.dart';
import 'package:supply_on_campus/widgets/Card_home.dart';

import 'package:supply_on_campus/widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
          Column(
            children: [
              Row(
                children: [CardHome()],
              )
            ],
          )
        ],
      ),
    );
  }
}
