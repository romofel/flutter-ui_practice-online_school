import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_school/data/teachers.dart';
import 'package:online_school/models/teacher.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopSection(context),
          _buildInstructorListSection(),
        ],
      ),
    );
  }

  Expanded _buildInstructorListSection() {
    return Expanded(
      child: ListView(
        children:
            teachers.getRange(3, teachers.length).map<Row>((Teacher teacher) {
          return Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 74,
                    height: 86,
                    decoration: BoxDecoration(
                      color: const Color(0xffEBEBEB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Image(
                    image: AssetImage(teacher.image),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${teacher.title} ${teacher.badge} Badge',
                      style: GoogleFonts.lexendExa(
                        color: Colors.black.withOpacity(.6),
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      )),
                  Text('By ${teacher.name}',
                      style: GoogleFonts.lexendExa(
                        color: Colors.black,
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      )),
                  Text(
                      '${teacher.start?.toStringAsFixed(2)} - ${teacher.end?.toStringAsFixed(2)}',
                      style: GoogleFonts.lexendExa(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
              GestureDetector(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xff00BBC7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Join',
                    style: GoogleFonts.lexendExa(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Container _buildTopSection(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xff00BBC7).withOpacity(.1),
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.chevron_left, size: 32),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Column(
                      children: [
                        Text(
                          'UI/UX Design Class',
                          style: GoogleFonts.lexendExa(
                            color: const Color(0xff260404),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Schedule',
                          style: GoogleFonts.lexendExa(
                            color: const Color(0xff260404),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildWeekdays(),
          ],
        ),
      ),
    );
  }

  Widget _buildWeekdays() {
    final style = GoogleFonts.lexendExa(
      color: Colors.black,
      fontSize: 11,
      fontWeight: FontWeight.w500,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Mon', style: style),
        Text('Tue', style: style),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xff00BBC7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text('Wed',
              style: style.copyWith(
                color: Colors.white,
              )),
        ),
        Text('Thu', style: style),
        Text('Fri', style: style),
        Text('Sat', style: style),
        Text('Sun', style: style),
      ],
    );
  }
}
