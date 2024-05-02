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
