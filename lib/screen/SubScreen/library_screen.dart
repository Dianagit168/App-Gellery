import 'package:clone_photo_app/screen/all_photo/all_photo_page.dart';
import 'package:clone_photo_app/screen/month/month_page.dart';
import 'package:clone_photo_app/screen/years/years_page.dart';
import 'package:clone_photo_app/screen/days/day_page.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
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
              width: MediaQuery.of(context).size.width,
              height: 40,
           
              margin: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(65, 130, 131, 135),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(206, 164, 165, 167),
                ),
                
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: const Color.fromARGB(255, 130, 131, 135),
                labelColor: Colors.white,
                padding: const EdgeInsets.all(4),
                dividerColor: Colors.transparent,

                labelPadding:  EdgeInsets.zero,
                tabs: const [
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
}
