import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/colors.dart';
import '../widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = 'onboarding';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const OnboardingScreen(),
    );
  }

  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // resimler
                Image.asset(
                  'assets/images/onboarding.png',
                  fit: BoxFit.cover,
                  width: 312,
                  height: 321,
                ),
                //
                SizedBox(
                  width: 275,
                  height: 165,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Achieve all your goals now',
                        style: GoogleFonts.getFont(
                          'Abyssinica SIL',
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        maxLines: 2,
                      ),
                      Text(
                        'Online courses to specialize in the entertainment field that lead the generation today.',
                        style: GoogleFonts.getFont(
                          'ABeeZee',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 325,
                  height: 165,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        buttonBgColor: Colors.yellow,
                        buttonTxt: 'Login',
                        onTap: () {
                          // login screen navigate
                          Navigator.pushNamed(context, 'login');
                        },
                        buttonTxtColor: Colors.black,
                      ),
                      CustomButton(
                        buttonBgColor: choiraBlue,
                        buttonTxt: 'Create Account',
                        onTap: () {},
                        buttonTxtColor: Colors.white,
                        kWhiteBorder: true,
                      ),
                      InkWell(
                        onTap: () {
                          // home screen navigate
                          Navigator.pushNamed(context, 'home_screen');
                        },
                        child: Text(
                          'Guest Mode',
                          style: GoogleFonts.getFont('Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
