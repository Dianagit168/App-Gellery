import 'package:flutter/material.dart';

class YearsScreen extends StatelessWidget {
  const YearsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 270,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Card(
                      elevation: 15,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.network(
                        'https://static.politico.com/1a/e3/1223ba8149b9a4ff335be9eb1ff1/191222-kim-jong-un-gty-773.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      top: 18,
                      left: 22,
                      child: Text(
                        '2024',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Curation Complete',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 48, left: 20, right: 20),
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
