import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/colors.dart';
import 'custom_button.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: choiraBlueTwo,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
            width: 75,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$ 308",
                  style: GoogleFonts.getFont('ABeeZee',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                Text(
                  'per month',
                  style: GoogleFonts.getFont('ABeeZee',
                      color: choiraWhite,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            height: 40,
            width: 225,
            child: CustomButton(
              buttonBgColor: choiraYellow,
              buttonTxt: 'Subscribe',
              buttonTxtColor: choiraBlue,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
