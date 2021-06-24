import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          ),
          Positioned(
            top: 56,
            left: 24,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Image(
                    image: AssetImage('assets/images/avatar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Miss Seraphina',
                      style: GoogleFonts.lexendExa(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'UI/UX Instructor',
                      style: GoogleFonts.lexendExa(
                        color: Colors.black.withOpacity(.6),
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
