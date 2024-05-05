import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class DayScreen extends StatelessWidget {
  const DayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 6,
        mainAxisExtent: 450,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTqWTqscXMM9X9AIs0KIZruO-5mB3EfdO-LSwZ1j360iolr_dYIrU73Ans1B0wq9NY2FauWSwlEnfEEdYI',
              fit: BoxFit.cover,
              height: 450,
            ),
            Positioned(
              top: 18,
              left: 22,
              child: Row(
                children: [
                  const Text(
                    'Thu-Fri',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 254),
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
        );
      },
    );
  }
}
