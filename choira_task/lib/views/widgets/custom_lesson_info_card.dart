import 'package:choira_task/views/widgets/custom_yellow_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/colors.dart';

class CustomLessonInfoCard extends StatelessWidget {
  const CustomLessonInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // navigate to details
        Navigator.pushNamed(context, 'course_details');
      },
      child: Container(
        height: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // image
            Container(
              height: 95,
              width: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/violin.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // title
            Text(
              'Learn about the Beats',
              style: GoogleFonts.getFont(
                'ABeeZee',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
              ),
            ),
            Row(
              children: [
                // tutor name
                CustomIconButtonForTutorInfoCard(
                  icon: Icons.person,
                  buttonTxt: 'Hector Vega',
                  onPressed: () {},
                ),
                // total student amount
                CustomIconButtonForTutorInfoCard(
                  icon: Icons.people_alt_outlined,
                  buttonTxt: '2 k students',
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Container(
                decoration: BoxDecoration(
                    color: choiraBlueTwo,
                    borderRadius: BorderRadius.circular(5)),
                width: 70,
                height: 15,
                child: Center(
                  child: Text(
                    'Introduction',
                    style: GoogleFonts.getFont(
                      'ABeeZee',
                      fontSize: 7,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
