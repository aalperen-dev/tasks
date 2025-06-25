import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/colors.dart';
import 'custom_yellow_icon_button.dart';

class TutorInfoWidget extends StatelessWidget {
  const TutorInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: 360,
        height: 200,
        decoration: BoxDecoration(
            color: choiraBlueTwo,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 0.5,
            )),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const TutorInfo(
                tutorImgUrl:
                    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww',
                tutorName: 'Tannia Oberoi',
                tutorTitle: 'Mentor',
              ),
              const TutorDesc(
                tutorDesc:
                    'Music is the spiritual representation of an idea and one of the most important forms of communication in our daily lives.',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomIconButtonForTutorInfoCard(
                    icon: Icons.person,
                    buttonTxt: '2k students',
                    onPressed: () {},
                  ),
                  CustomIconButtonForTutorInfoCard(
                    icon: Icons.play_circle_outline,
                    buttonTxt: '10 lessons',
                    onPressed: () {},
                  ),
                  CustomIconButtonForTutorInfoCard(
                    icon: Icons.star,
                    buttonTxt: '4.5 score',
                    onPressed: () {},
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

class TutorInfo extends StatelessWidget {
  final String tutorImgUrl;
  final String tutorName;
  final String tutorTitle;
  const TutorInfo({
    super.key,
    required this.tutorImgUrl,
    required this.tutorName,
    required this.tutorTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                tutorImgUrl,
                scale: 0.8,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              tutorName,
              style: GoogleFonts.getFont(
                'Abyssinica SIL',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Text(
          tutorTitle,
          style: GoogleFonts.getFont(
            'ABeeZee',
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class TutorDesc extends StatelessWidget {
  final String tutorDesc;
  const TutorDesc({
    super.key,
    required this.tutorDesc,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      tutorDesc,
      style: GoogleFonts.getFont(
        'ABeeZee',
        fontWeight: FontWeight.w400,
        color: Colors.white,
        fontSize: 12,
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
