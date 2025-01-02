import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height * 0.95)),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Supply",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF263AFF))),
                  Text("On Campus",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF263AFF))),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/home'),
                  child: Text("Market Place",
                      style: TextStyle(fontSize: 18, color: Color(0xFF808080))),
                ),
                GestureDetector(
                  // onTap: () => Navigator.pushNamed(context, '/messages'),
                  child: Text("Messages",
                      style: TextStyle(fontSize: 18, color: Color(0xFF808080))),
                ),
                GestureDetector(
                  // onTap: () => Navigator.pushNamed(context, '/profile'),
                  child: Text("Profile",
                      style: TextStyle(fontSize: 18, color: Color(0xFF808080))),
                ),
                Icon(Icons.notifications, color: Color(0xFF808080)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
