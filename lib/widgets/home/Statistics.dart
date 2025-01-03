import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});
  Widget statisticsItem({required int total, required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(total.toString(),
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF263AFF))),
        Text(text, style: TextStyle(fontSize: 24, color: Colors.grey)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 250,
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
            Text('Statistics',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                statisticsItem(total: 10, text: 'Items Sold'),
                statisticsItem(total: 1200, text: 'Earnings'),
                statisticsItem(total: 5, text: 'Sessions Booked'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
