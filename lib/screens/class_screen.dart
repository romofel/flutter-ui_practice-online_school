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
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(24),
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
                  const SizedBox(width: 8),
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
                  const Spacer(),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color(0xffFF3E3E),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Live',
                          style: GoogleFonts.lexendExa(
                            color: const Color(0xffFF2222),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: 64),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Say Something...',
                  hintStyle: GoogleFonts.lexendExa(
                    color: Colors.black.withOpacity(.6),
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                  isDense: true,
                  prefixIcon: const Image(
                    image: AssetImage('assets/images/smiley.png'),
                    fit: BoxFit.cover,
                    height: 8,
                  ),
                  contentPadding: const EdgeInsets.all(24),
                  filled: true,
                  fillColor: const Color(0xffCACACA).withOpacity(.8),
                  isCollapsed: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 40,
            right: 24,
            child: Image(
              image: AssetImage('assets/images/heart_icon.png'),
              fit: BoxFit.cover,
              height: 48,
            ),
          ),
        ],
      ),
    );
  }
}
