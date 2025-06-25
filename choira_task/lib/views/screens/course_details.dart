import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../config/colors.dart';
import '../widgets/custom_accordion.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/tutor_info_card.dart';

class CourseDetails extends StatelessWidget {
  static const String routeName = 'course_details';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const CourseDetails(),
    );
  }

  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // navigato to homepage
            Navigator.pushNamed(context, 'home_screen');
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.cast_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: ContainedTabBarView(
        tabs: const [
          Text('lessons'),
          Text('about the course'),
        ],
        tabBarProperties: TabBarProperties(
          background: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            // colors for background?
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          indicator: ContainerTabIndicator(
            radius: BorderRadius.circular(11.0),
            color: choiraBlueTwo,
          ),
          labelColor: Colors.white,
          unselectedLabelColor: choiraWhite,
        ),
        views: const [
          LessonsView(),
          AboutTheCourseView(),
        ],
        onChange: (_) {},
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

class AboutTheCourseView extends StatelessWidget {
  const AboutTheCourseView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Under Consruction!',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}

class LessonsView extends StatefulWidget {
  const LessonsView({
    super.key,
  });

  @override
  State<LessonsView> createState() => _LessonsViewState();
}

class _LessonsViewState extends State<LessonsView> {
  // late CachedVideoPlayerController controller;
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.asset('assets/videos/learn.mp4'),
    );
  }

  @override
  void dispose() {
    super.dispose();
    flickManager.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Column(
          children: [
            // video
            FlickVideoPlayer(
              flickManager: flickManager,
              flickVideoWithControls: const FlickVideoWithControls(
                controls: FlickPortraitControls(),
              ),
            ),

            // tutor info
            const TutorInfoWidget(),
            // accordion for lesson
            const AccordionForLessonInfo(),
          ],
        ),
      ),
    );
  }
}
