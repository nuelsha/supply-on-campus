import 'package:flutter/material.dart';

import 'package:supply_on_campus/widgets/MyButton.dart';
import 'package:supply_on_campus/widgets/MyTextField.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD2D2D2),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.height * 0.6,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Supply",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF263AFF))),
                  Text("On Campus",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF263AFF))),
                ],
              ),
              Text("create your account",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black)),
              SizedBox(height: 10),
              Mytextfield(hint: 'Full Name'),
              SizedBox(height: 10),
              Mytextfield(hint: 'Email'),
              SizedBox(height: 10),
              Mytextfield(hint: 'Password'),
              SizedBox(height: 10),
              Mytextfield(
                hint: 'Conferm Password',
              ),
              SizedBox(height: 20),
              Mybutton(
                hint: 'Create Account',
                onTap: () => Navigator.pushNamed(context, '/home'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text("Login",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF263AFF))),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tutor Registration",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  GestureDetector(
                    onTap: () {},
                    child: Text("Create Account",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF263AFF))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
