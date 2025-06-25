import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:choira_task/config/contansts.dart';
import '../../config/colors.dart';
import '../widgets/custom_categories_row.dart';
import '../widgets/custom_lesson_info_card.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home_screen';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const HomePage(),
    );
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/choiraLogo.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {},
              child: const CircleAvatar(
                maxRadius: 15,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww',
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'What are you going to learn today?',
                  style: GoogleFonts.getFont(
                    'Abyssinica SIL',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              // search bar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: choiraBlueTwo,
                    hintText: 'Search',
                    hintStyle: GoogleFonts.getFont(
                      'ABeeZee',
                      color: choiraWhite,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              // courses
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Courses',
                    style: GoogleFonts.getFont(
                      'Abyssinica SIL',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View More',
                      style: GoogleFonts.getFont(
                        'ABeeZee',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              // categories
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryName.length,
                  itemBuilder: (context, index) {
                    // actual info should be passed into this widget.
                    // its hard coded
                    return CustomCategoriesRow(
                      index: index,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'learn for free',
                      style: GoogleFonts.getFont(
                        'Abyssinica SIL',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    DotsIndicator(
                      position: 0,
                      onTap: (position) {},
                      dotsCount: 4,
                      decorator: DotsDecorator(
                          activeColor: choiraYellow,
                          activeSize: const Size(30, 9),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    // actual info should be passed into this widget.
                    // its hard coded
                    return const CustomLessonInfoCard();
                  },
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity - 5,
                    height: 80,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(157, 77, 82, 0.37),
                          Color.fromRGBO(16, 30, 59, 1),
                          Color.fromRGBO(148, 176, 97, 0.51),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 75,
                            height: 75,
                            child: Image.asset('assets/images/lock.png')),
                        SizedBox(
                          width: 185,
                          height: 35,
                          child: Text(
                            'Access more than 700 courses by purchasing a plan',
                            style: GoogleFonts.getFont(
                              'Abyssinica SIL',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 13,
                            ),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: '◠',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: '◠',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_download_outlined),
            label: '◠',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: '◠',
          ),
        ],
      ),
    );
  }
}
