// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:in_sleep/constants/appcolors.dart';

class AvailableCourseFixedDuration extends StatelessWidget {
  final String imageName;
  final String TimeDuration;
  final String CourseName;
  final String CourseDuration;

  const AvailableCourseFixedDuration({
    super.key,
    required this.imageName,
    required this.TimeDuration,
    required this.CourseName,
    required this.CourseDuration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
      child: Container(
        height: MediaQuery.of(context).size.width / 2.1,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          // color: Colors.black,
          image: DecorationImage(
            image: AssetImage(imageName),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 12, 12, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 25,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.highlightColor),
                child: Text(
                  TimeDuration,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.textColor1,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                CourseName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.textColor1,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                CourseDuration,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.highlightColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AvailableCourseVariableDuration extends StatelessWidget {
  final String imageName;
  final String TimeDurationRange;
  final String CourseName;
  final String CourseDescription;

  const AvailableCourseVariableDuration({
    super.key,
    required this.imageName,
    required this.TimeDurationRange,
    required this.CourseName,
    required this.CourseDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
      child: Container(
        height: MediaQuery.of(context).size.width / 2.1,
        width: MediaQuery.of(context).size.width / 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          // color: Colors.black,
          image: DecorationImage(
            image: AssetImage(imageName),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 12, 12, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                CourseName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.textColor1,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                child: Text(
                  CourseDescription,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    height: 1.2,
                    color: AppColors.highlightColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  const Icon(
                    Icons.play_circle_fill_rounded,
                    color: AppColors.textColor1,
                    size: 35,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    TimeDurationRange,
                    style: const TextStyle(
                      color: AppColors.textColor1,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AvailableCourseWithName extends StatelessWidget {
  final String imageName;
  final String CourseName;

  const AvailableCourseWithName({
    super.key,
    required this.imageName,
    required this.CourseName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
      child: Container(
        height: MediaQuery.of(context).size.width / 2.35,
        width: MediaQuery.of(context).size.width / 2.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          // color: Colors.black,
          image: DecorationImage(
            image: AssetImage(imageName),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 12, 12, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                CourseName,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: AppColors.textColor1,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
