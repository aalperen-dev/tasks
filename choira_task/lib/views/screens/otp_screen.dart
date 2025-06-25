// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../config/colors.dart';
import '../widgets/custom_button.dart';

class OTPScreen extends StatelessWidget {
  static const String routeName = 'otp';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const OTPScreen(),
    );
  }

  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 25,
          right: 25,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // picture
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 180,
                    height: 180,
                    child: Image.asset('assets/images/frame.png'),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Verify your mobile number',
                    style: GoogleFonts.getFont(
                      'Lato',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      'Please enter the 4-digit verification code sent to',
                      style: GoogleFonts.getFont('Lato',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: choiraDark),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '+91 9876543210',
                    style: GoogleFonts.getFont('Lato',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: choiraDarkTwo),
                  ),
                ),
                const SizedBox(height: 15),
                // OTP
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: OtpTextField(
                    mainAxisAlignment: MainAxisAlignment.start,
                    borderWidth: 0,
                    borderColor: choiraBlueTwo,
                    focusedBorderColor: choiraBlueTwo,
                    enabledBorderColor: choiraBlueTwo,
                    disabledBorderColor: choiraBlueTwo,
                    filled: true,
                    fillColor: choiraBlueTwo,
                    numberOfFields: 4,
                    showFieldAsBox: true,
                    textStyle: GoogleFonts.getFont('Inter',
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                ),
                // countdown
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Countdown(
                        seconds: 30,
                        build: (
                          BuildContext context,
                          double time,
                        ) =>
                            Text.rich(
                          TextSpan(
                              text: 'Expect code in ',
                              style: GoogleFonts.getFont(
                                'Lato',
                                color: choiraDark,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: '${time.toInt()} seconds.',
                                  style: GoogleFonts.getFont('Roboto',
                                      color: choiraDarkTwo,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                )
                              ]),
                        ),
                        onFinished: () {
                          print('time is up...');
                        },
                      ),
                    ],
                  ),
                ),
                // button
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: CustomButton(
                    buttonBgColor: choiraYellow,
                    buttonTxt: 'Continue',
                    buttonTxtColor: choiraDarkThree,
                    onTap: () {
                      // navigate to home screen
                      Navigator.pushNamed(context, 'home_screen');
                    },
                    borderRadius: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
