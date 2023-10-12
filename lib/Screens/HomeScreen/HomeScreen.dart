// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:in_sleep/Screens/HomeScreen/Components/availableCoursesInfo.dart';
import 'package:in_sleep/constants/appcolors.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List Activity = [
    {"Sleep": false},
    {"Inner Peace": true},
    {"Stress": false},
    {"Anxiety": false},
    {"Meditate": false},
    {"Music": false},
    {"Stories": false},
  ];

  @override
  void initState() {
    // TODO: implement initState
    for (int i = 0; i < Activity.length; i++) {
      print(Activity[i].values.toList()[0]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 6.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColors.backGroundColor,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16, top: 14, bottom: 0),
                      child: Text(
                        "Good Morning, Tom!",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: AppColors.textColor1,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: AnimationLimiter(
                          child: ListView.builder(
                        // reverse: true,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        //       // shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: Activity.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              height: 20,
                              // width: 100,
                              decoration: BoxDecoration(
                                color:
                                    Activity[index].values.toList()[0] == true
                                        ? AppColors.highlightColor
                                        : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    Activity[index].keys.toList()[0],
                                    style: const TextStyle(
                                      color: AppColors.textColor1,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      )),
                    ),
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.24,
              child: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.35,
                    child: const Image(
                      image: AssetImage("assets/images/HomepageBg.webp"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.35,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            // height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              child: Row(
                                children: [
                                  AvailableCourseFixedDuration(
                                    imageName:
                                        "assets/images/Leaves/Leaves2.jpg",
                                    TimeDuration: "20min",
                                    CourseName: "Quite Your Mind",
                                    CourseDuration: "7 Days Course",
                                  ),
                                  AvailableCourseFixedDuration(
                                    imageName:
                                        "assets/images/Leaves/Leaves3.jpg",
                                    TimeDuration: "20min",
                                    CourseName: "Happy Relationships",
                                    CourseDuration: "7 Days Course",
                                  ),
                                  AvailableCourseFixedDuration(
                                    imageName:
                                        "assets/images/Leaves/Leaves4.jpeg",
                                    TimeDuration: "20min",
                                    CourseName: "Happy Work Life",
                                    CourseDuration: "10 Days Course",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(12, 0, 8, 0),
                            child: Text(
                              "Recommended",
                              style: TextStyle(
                                color: AppColors.highlightColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            // height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              child: Row(
                                children: [
                                  AvailableCourseVariableDuration(
                                    imageName:
                                        "assets/images/CoffeeAndBooks/CnB5.jpg",
                                    TimeDurationRange: "3-10MIN",
                                    CourseName: "Zen Meditation",
                                    CourseDescription:
                                        "7 Day Audio and Video Series",
                                  ),
                                  AvailableCourseVariableDuration(
                                    imageName:
                                        "assets/images/CoffeeAndBooks/CnB6.webp",
                                    TimeDurationRange: "7-20MIN",
                                    CourseName: "Quite Me Time",
                                    CourseDescription:
                                        "Meditation and Peacefulness",
                                  ),
                                  AvailableCourseVariableDuration(
                                    imageName:
                                        "assets/images/CoffeeAndBooks/CnB3.jpg",
                                    TimeDurationRange: "20MIN",
                                    CourseName: "Happy Mom Life",
                                    CourseDescription:
                                        "10 Days Course with Audio",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(12, 0, 8, 0),
                            child: Text(
                              "Recommended",
                              style: TextStyle(
                                color: AppColors.highlightColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            // height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              child: Row(
                                children: [
                                  AvailableCourseWithName(
                                    imageName:
                                        "assets/images/SkyAndFlowers/SaF4.jpg",
                                    CourseName: "Loving Kindness",
                                  ),
                                  AvailableCourseWithName(
                                    imageName:
                                        "assets/images/SkyAndFlowers/SaF2.jpeg",
                                    CourseName: "Visualization",
                                  ),
                                  AvailableCourseWithName(
                                    imageName:
                                        "assets/images/SkyAndFlowers/SaF1.jpeg",
                                    CourseName: "Courage and Confidence",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
