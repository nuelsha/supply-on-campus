import 'package:flutter/material.dart';
import 'package:supply_on_campus/widgets/home/Card_home.dart';
import 'package:supply_on_campus/widgets/home/Recent.dart';
import 'package:supply_on_campus/widgets/home/Recommended.dart';
import 'package:supply_on_campus/widgets/home/Statistics.dart';

import 'package:supply_on_campus/widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 25,
                horizontal: (MediaQuery.of(context).size.width * 0.08)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [CardHome(), Recent()],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Recommended(),
                    Statistics(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
