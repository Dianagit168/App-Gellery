import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

PreferredSizeWidget appBarTrans() {
  return AppBar(
    backgroundColor: Colors.transparent,
    title: const Text(
      "6 Apr-3 May 2024",
      style: TextStyle(
          color: Color.fromARGB(255, 150, 52, 52),
          fontWeight: FontWeight.bold,
          fontSize: 23),
    ),
    actions: [
      Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(243, 115, 117, 126),
          borderRadius: BorderRadius.circular(16),
          shape: BoxShape.rectangle,
        ),
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
            color: Color.fromARGB(243, 115, 117, 126), shape: BoxShape.circle),
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
  );
}
