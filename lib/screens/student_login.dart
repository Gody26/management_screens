import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:management_app/screens/teacher_login.dart';

class StudentLogin extends StatelessWidget {
  const StudentLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              'assets/images/student_icon.png',
              height: size.height * 0.2,
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Sign in as Student',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.17,
              right: size.width * 0.17,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.17,
              right: size.width * 0.17,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 45,
            width: 150,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 25),
          Text('Are You a teacher?',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) {
                    return TeacherLogin();
                  }),
                ),
              );
            },
            child: Text('Click Here'),
          )
        ],
      ),
    );
  }
}
