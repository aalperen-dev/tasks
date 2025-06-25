import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Color buttonBgColor;
  final String buttonTxt;
  final Color buttonTxtColor;
  final VoidCallback onTap;
  final bool? kWhiteBorder;
  final double? borderRadius;
  const CustomButton({
    super.key,
    required this.buttonBgColor,
    required this.buttonTxt,
    required this.buttonTxtColor,
    required this.onTap,
    this.kWhiteBorder = false,
    this.borderRadius = 7,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonBgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          side: kWhiteBorder!
              ? const BorderSide(color: Colors.white)
              : BorderSide.none,
        ),
      ),
      onPressed: onTap,
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTxt,
            style: GoogleFonts.getFont(
              'Inter',
              color: buttonTxtColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
