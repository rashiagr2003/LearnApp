import 'package:atg_project/widget_card/box1_widget_card.dart';
import 'package:atg_project/widget_card/events_widget_card.dart';
import 'package:atg_project/widget_card/headiing1_widget.dart';
import 'package:atg_project/widget_card/lessons_widget_card.dart';
import 'package:atg_project/widget_card/program_widget_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEEF3FD),
        appBar: AppBar(
          backgroundColor: const Color(0xffC4C4C4).withOpacity(0.0),
          toolbarHeight: 56,
          elevation: 0,
          title: const Icon(
            Icons.align_horizontal_left,
            color: Color(0xff939CA3),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Icon(
                Icons.forum_outlined,
                color: Color(0xff939CA3),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Icon(Icons.notifications_none, color: Color(0xff939CA3)),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: const Color(0xffEEF3FD),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Priya!",
                      style: GoogleFonts.lora(
                          color: const Color(0xff08090A),
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "What do you wanna learn today?",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: const Color(0xff6D747A)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Box1Widget(
                                name: "Programs", icon: Icons.bookmark_add),
                          ),
                          Box1Widget(name: "Get help", icon: Icons.help)
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Box1Widget(
                              name: "Learn", icon: Icons.menu_book_sharp),
                        ),
                        Box1Widget(name: "DD Tracker", icon: Icons.view_compact)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: const Color(0xffF5F5F5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      const HeadingWidget(
                        heading: 'Programs for you',
                      ),
                      SizedBox(
                        height: 294,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            ProgramWidgetCard(
                                style: "LIFESTYLE",
                                color: Color(0xffDDE3C2),
                                heading:
                                    "A complete guide for your new born baby",
                                noOfLessons: 16,
                                image: 'assets/img1.png'),
                            ProgramWidgetCard(
                                style: "WORKING PARENTS",
                                color: Color(0xffFFF0D3),
                                heading: "Understanding of human behaviour",
                                noOfLessons: 12,
                                image:
                                    'assets/young-woman-doing-natarajasana-exercise1.png'),
                          ],
                        ),
                      ),
                      const HeadingWidget(
                        heading: 'Events and experiences',
                      ),
                      SizedBox(
                        height: 294,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            EventCard(
                              image:
                                  'assets/young-woman-doing-natarajasana-exercise1.png',
                              style: "BABYCARE",
                              color: Color(0xffDDE3C2),
                              heading: "Understanding of human behavioury",
                            ),
                            EventCard(
                                style: "BABYCARE",
                                color: Color(0xffFFF0D3),
                                heading: "Understanding of human behaviour",
                                image:
                                    'assets/young-woman-doing-natarajasana-exercise1.png'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const HeadingWidget(
                        heading: 'Lessons for you',
                      ),
                      SizedBox(
                        height: 294,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            LessonCard(
                              style: "BABYCARE",
                              color: Color(0xffFFF0D3),
                              heading: "Understanding of human behaviour",
                              image:
                                  'assets/young-woman-doing-natarajasana-exercise1.png',
                              minute: 3,
                            ),
                            LessonCard(
                              style: "BABYCARE",
                              color: Color(0xffFFF0D3),
                              heading: "Understanding of human behaviour",
                              image:
                                  'assets/young-woman-doing-natarajasana-exercise1.png',
                              minute: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Hub',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xffDEE8FB),
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/e16c/321a/97e1043d3d82e3be6cdf905925a9cd94?Expires=1673222400&Signature=FgBzJ8ZXYqJGO-y9nZFE2Q-wobk-09YkYRxc22eTOrfEjgaMBfpYyzYQMhW3RlHjmm9pKZfWr8dgBrhu-VIV8DFCtM-Jn3ZI7H3pU2bk42XWc5STbr5EgOlCe6V66QhXIN-jIwvtdvhqdk1pmM7B-~V1tIDeELXfvjbfVz0neCIIN8mn6-08l3Km38E2XbkKu~xqytwMkMjJOF9fVDZmryS67f9TvrDinzQJYEdy7bcwYKHmDJOMNXC8vH3zn5RDGUX9GHSi1NXzpVxGkMOUs4HUSGN1VBfP-7L6cc1dk85YQL8cIg3C4wUH7J7QdwBhPFY5j4wQdm757EN4PHU5~Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                ),
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          showUnselectedLabels: true,
          unselectedItemColor: const Color(0xff6D747A),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
