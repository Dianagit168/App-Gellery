import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MonthScreen extends StatelessWidget {
  const MonthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 300,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, bottom: 8),
                child: Text(
                  'May 2024',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Stack(
                children: [
                  Card(
                    elevation: 15,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.network(
                      'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcS6HuPXKLP6UfXBrzMz42_2w-8nPjgCVZNmoA2AcNt_KXR8vcMdMra-IijGBznEsxwEFIwzRSRTlRE5kDM',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 18,
                    left: 22,
                    child: Row(
                      children: [
                        const Text(
                          'New York',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 200),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 170, 172, 182),
                              shape: BoxShape.circle),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
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
            ],
          );
        },
      ),
    );
  }
}
// Padding(
//       padding: const EdgeInsets.only(left: 10, right: 10),
//       child: GridView.builder(
//         shrinkWrap: true,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 5,
//           crossAxisSpacing: 2,
//           mainAxisSpacing: 2,
//           mainAxisExtent: 80,
//         ),
//         itemCount: 1000,
//         itemBuilder: (context, index) {
//           return Image.network(
//             'https://static.politico.com/1a/e3/1223ba8149b9a4ff335be9eb1ff1/191222-kim-jong-un-gty-773.jpg',
//             fit: BoxFit.cover,
//           );
//         },
//       ),
//     );