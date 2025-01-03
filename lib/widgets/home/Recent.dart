import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});
  Widget recentItem({required String text, required String text_sub}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(text_sub, style: TextStyle(fontSize: 14, color: Colors.grey)),
      ],
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recent Activity',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            recentItem(text: 'Sold Chemistry Textbook', text_sub: '2023-05-15'),
            SizedBox(height: 10),
            recentItem(text: 'Sold Chemistry Textbook', text_sub: '2023-05-15'),
            SizedBox(height: 10),
            recentItem(text: 'Sold Chemistry Textbook', text_sub: '2023-05-15'),
            SizedBox(height: 10),
            recentItem(text: 'Sold Chemistry Textbook', text_sub: '2023-05-15')
          ],
        ),
      ),
    );
  }
}
