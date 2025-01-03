import "package:flutter/material.dart";

class BlueCardMp extends StatelessWidget {
  const BlueCardMp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xFF4758FF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Everything you need",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "right on campus",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Buy, sell, or connect—easily and securely. Your one-stop platform for campus essentials.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
            child: Row(
              children: [
                Container(
                  height: 54,
                  width: 172,
                  decoration: BoxDecoration(
                      color: Color(0xFF263AFF),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Sell Item",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                Container(
                  height: 54,
                  width: 172,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Start shoping",
                      style: TextStyle(
                          color: Color(0xFF263AFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
