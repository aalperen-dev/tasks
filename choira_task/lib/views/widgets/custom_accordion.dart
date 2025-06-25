import 'package:custom_accordion/custom_accordion.dart';
import 'package:flutter/material.dart';
import '../../config/colors.dart';

class AccordionForLessonInfo extends StatelessWidget {
  const AccordionForLessonInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAccordion(
      title: 'Introduction',
      subTitle: '2min - 2s',
      headerBackgroundColor: choiraBlueTwo,
      titleStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      subTitleStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      toggleIconOpen: Icons.keyboard_arrow_down_sharp,
      toggleIconClose: Icons.keyboard_arrow_up_sharp,
      headerIconColor: Colors.white,
      accordionElevation: 0,
      widgetItemsPadding: EdgeInsets.zero,
      widgetItems: Container(
        padding: const EdgeInsets.all(10),
        color: choiraBlueTwo,
        // color: choiraBlueTwo,
        child: const Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
