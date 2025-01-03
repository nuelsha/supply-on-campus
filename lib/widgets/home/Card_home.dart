import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome({super.key});

  // Reusable method to create a card item
  Widget buildCardItem(
      {required Color color, required String title, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 150,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 25, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 375,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCardItem(
                  icon: Icons.add_circle_outline,
                  color: const Color(0xFF000645),
                  title: 'List a Product '),
              buildCardItem(
                  icon: Icons.article_outlined,
                  color: const Color(0xFF000645),
                  title: 'Find Tutor'),
            ],
          ),
          const SizedBox(height: 10), // Added spacing between rows
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCardItem(
                  icon: Icons.shop,
                  color: const Color(0xFF000645),
                  title: 'Manage orders  '),
              buildCardItem(
                  icon: Icons.chat_outlined,
                  color: const Color(0xFF000645),
                  title: 'Marketplace '),
            ],
          ),
        ],
      ),
    );
  }
}
