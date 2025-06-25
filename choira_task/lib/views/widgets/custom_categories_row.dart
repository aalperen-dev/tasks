import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/contansts.dart';

class CustomCategoriesRow extends StatelessWidget {
  final int index;
  const CustomCategoriesRow({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    categoryLogos[index],
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(17),
                ),
              ),
            ),
            Text(
              categoryName[index],
              style: GoogleFonts.getFont(
                'ABeeZee',
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
