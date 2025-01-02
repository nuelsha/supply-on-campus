import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final String hint;
  const Mytextfield({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hint,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0.0),
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
