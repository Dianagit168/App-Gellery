import 'package:clone_photo_app/data/people_and_place.dart';
import 'package:clone_photo_app/widgets/appbar_trans.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class DayScreen extends StatelessWidget {
  const DayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarTrans(true),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            GridView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 6,
                mainAxisExtent: 450,
              ),
              itemCount: people.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 450,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(people[index].thumnail),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Thu-Fri ${people[index].qty}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
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
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 14),
              child: Text(
                'Curation Complete',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18, left: 20, right: 20),
              child: Text(
                'Photo and video are curated when your device is connected to power',
                style: TextStyle(fontWeight: FontWeight.w600, height: 1.2),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
