import 'package:clone_photo_app/Screen/ForYouScreen.dart';
import 'package:clone_photo_app/Screen/LibraryScreen.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MainSreen extends StatefulWidget {
  const MainSreen({super.key});

  @override
  State<MainSreen> createState() => _MainSreenState();
}

class _MainSreenState extends State<MainSreen> {
  int selectedIndex = 0;

  List screenList = [
    const LibraryScreen(),
    const ForYouScreen(),
    const LibraryScreen(),
    const ForYouScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(243, 115, 117, 126),
                borderRadius: BorderRadius.circular(16),
                shape: BoxShape.rectangle),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              child: Text(
                'Select',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(243, 115, 117, 126),
                shape: BoxShape.circle),
            child: const Padding(
              padding: EdgeInsets.all(6.0),
              child: Icon(
                LucideIcons.moreHorizontal,
                size: 17,
                color: Colors.white,
              ),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        title: const Text(
          "6 Apr-3 May 2024",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
        ),
      ),
      body: screenList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        selectedFontSize: 12,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.image),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.heart),
            label: 'For You',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.album),
            label: 'Albums',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
