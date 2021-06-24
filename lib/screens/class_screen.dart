import 'package:flutter/material.dart';

class ClassScreen extends StatelessWidget {
  const ClassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/classbackground.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: const Color(0xffA1A1A1).withOpacity(.5),
          ),
          const Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Image(
              image: AssetImage('assets/images/instructor.png'),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
