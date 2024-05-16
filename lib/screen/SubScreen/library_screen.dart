import 'package:clone_photo_app/screen/all_photo/all_photo_page.dart';
import 'package:clone_photo_app/screen/all_photo/all_photo_screen.dart';
import 'package:clone_photo_app/screen/month/month_page.dart';
import 'package:clone_photo_app/screen/month/month_screen.dart';
import 'package:clone_photo_app/screen/years/years_page.dart';
import 'package:clone_photo_app/screen/years/years_screen.dart';
import 'package:clone_photo_app/screen/days/day_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return tapBar(context);
  }
}

Widget tapBar(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height,
    child: DefaultTabController(
      length: 4,
      child: Column(
        children: [
          const Expanded(
            child: TabBarView(
              children: [
                YearsPage(),
                MonthPage(),
                DayPage(),
                AllPhotoPage(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 35,
            decoration: BoxDecoration(
              color: const Color.fromARGB(65, 130, 131, 135),
              borderRadius: BorderRadius.circular(30),
            ),
            width: MediaQuery.of(context).size.width,
            child: const TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              // indicator: BoxDecoration(
              //   borderRadius: BorderRadius.circular(30),
              //   color: const Color.fromARGB(206, 164, 165, 167),
              // ),
              // labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              // unselectedLabelColor: const Color.fromARGB(255, 130, 131, 135),
              // labelColor: Colors.white,
              padding: EdgeInsets.zero,
              // labelPadding: EdgeInsets.symmetric(horizontal: 8),
              tabs: [
                Tab(child: Text('Years')),
                Tab(child: Text('Months')),
                Tab(child: Text('Days')),
                Tab(child: Text('All Photos')),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
