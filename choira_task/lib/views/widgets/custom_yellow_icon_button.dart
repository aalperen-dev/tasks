import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/colors.dart';

class CustomIconButtonForTutorInfoCard extends StatelessWidget {
  final IconData icon;

  final String buttonTxt;
  final VoidCallback onPressed;
  const CustomIconButtonForTutorInfoCard({
    super.key,
    required this.icon,
    required this.buttonTxt,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(
        icon,
        color: choiraYellowTwo,
        size: 15,
      ),
      onPressed: onPressed,
      label: Text(
        buttonTxt,
        style: GoogleFonts.getFont(
          'ABeeZee',
          fontWeight: FontWeight.w400,
          fontSize: 10,
          color: Colors.white,
        ),
      ),
    );
  }
}
