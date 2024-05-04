import 'package:clone_photo_app/Screen/SubScreen/all_photo_screen.dart';
import 'package:clone_photo_app/Screen/SubScreen/MonthScreen.dart';
import 'package:clone_photo_app/Screen/SubScreen/YearsScreen.dart';
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
                YearsScreen(),
                MonthScreen(),
                Text('Enrollment'),
                AllPhoto(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 35,
              decoration: BoxDecoration(
                color: const Color.fromARGB(65, 130, 131, 135),
                borderRadius: BorderRadius.circular(30),
              ),
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                isScrollable: true,
                physics: const ClampingScrollPhysics(),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(206, 164, 165, 167),
                ),
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: const Color.fromARGB(255, 130, 131, 135),
                labelColor: Colors.white,
                tabs: const [
                  Text('Years'),
                  Text('Months'),
                  Text('Days'),
                  Text('All Photos'),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
