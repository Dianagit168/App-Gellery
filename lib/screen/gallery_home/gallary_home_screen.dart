import 'package:clone_photo_app/screen/SubScreen/albums_screen.dart';
import 'package:clone_photo_app/screen/SubScreen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../SubScreen/foryou_screen.dart';
import '../SubScreen/library_screen.dart';

class GalleryHomeSreen extends StatefulWidget {
  const GalleryHomeSreen({super.key});

  @override
  State<GalleryHomeSreen> createState() => _GalleryHomeSreenState();
}

class _GalleryHomeSreenState extends State<GalleryHomeSreen> {
  int selectedIndex = 0;

  List screenList = [
    const LibraryScreen(),
    const ForYouScreen(),
    const AlbumsScreen(),
    const SeachScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(238, 255, 255, 255),
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
