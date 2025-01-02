import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String hint;
  const Mybutton({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.07),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF263AFF),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Center(
          child: Text(
            hint,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
