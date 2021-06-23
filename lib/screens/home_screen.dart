import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_school/data/constants.dart';
import 'package:online_school/data/teachers.dart';
import 'package:online_school/models/teacher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(),
            _buildHeader(),
            const SizedBox(height: 24),
            _buildHeroSection(),
            const SizedBox(height: 24),
            ..._buildTutorListSection(),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Class Schedule',
                style: GoogleFonts.lexendExa(
                  color: const Color(0xff260404),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: Wrap(
                children: classes.map<Container>((String availableClass) {
                  return Container(
                    width: 156,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff00BBC7),
                    ),
                  );
                }).toList(),
              ),
            ),
            // ..._buildScheduleSection(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildScheduleSection() {
    return [
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 24),
      //   child: SingleChildScrollView(
      //     child: GridView.count(
      //       crossAxisCount: 2,
      //       children: [
      //         Text('one'),
      //         Text('one'),
      //         Text('one'),
      //         Text('one'),
      //         Text('one'),
      //         Text('one'),
      //       ],
      //     ),
      //   ),
      // ),
    ];
  }

  List<Widget> _buildTutorListSection() {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Text(
          'Popular Tutor',
          style: GoogleFonts.lexendExa(
            color: const Color(0xff260404),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      const SizedBox(height: 16),
      Container(
        height: 150,
        padding: const EdgeInsets.only(left: 24),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                margin: const EdgeInsets.only(right: 24),
                child: _buildTutorOption(teachers[index], gradients[index]));
          },
        ),
      ),
    ];
  }

  Widget _buildTutorOption(Teacher teacher, LinearGradient gradient) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          width: 136,
          height: 120,
          alignment: AlignmentDirectional.center,
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                teacher.name,
                style: GoogleFonts.lexendExa(
                  color: const Color(0xff260404),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                teacher.title,
                style: GoogleFonts.lexendExa(
                  color: const Color(0xff260404).withOpacity(.60),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
              width: 80,
              height: 80,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: const Color(0xffCBC4DE),
                gradient: gradient,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image(
                image: AssetImage(teacher.image),
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }

  Padding _buildHeroSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            height: 168,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: const Color(0xff00BBC7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                const Spacer(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'What do you want to learn today?',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.lexendExa(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(43),
                        ),
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.lexendExa(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Image(
              image: AssetImage('assets/images/hero_girl.png'),
              fit: BoxFit.cover,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Masum',
            style: GoogleFonts.lexendExa(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text('Welcome to online school',
              style: GoogleFonts.lexendExa(
                color: const Color(0xff260404).withOpacity(.70),
                fontSize: 12,
                fontWeight: FontWeight.w300,
              )),
        ],
      ),
    );
  }

  Padding _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Icon(Icons.menu),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xffEFEFEF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Image(
              image: AssetImage('assets/images/avatar.png'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
