import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:management_app/screens/student_login.dart';
import 'package:management_app/screens/teacher_login.dart';
import 'package:management_app/widgets/tap_icon.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.23,
              top: size.width * 0.09,
              right: size.width * 0.2,
              bottom: size.width * 0.05,
            ),
            child: Text('Choose Your Role',
                style: Theme.of(context).textTheme.titleLarge),
          ),
          GestureDetector(
            child: tapIcon(
              image: 'assets/images/student_icon.png',
              title: 'Student',
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return StudentLogin();
                  },
                ),
              );
            },
          ),
          SizedBox(height: size.height * 0.1),
          GestureDetector(
            child: tapIcon(
              image: 'assets/images/teacher_icon.png',
              title: 'Teacher',
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return TeacherLogin();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
