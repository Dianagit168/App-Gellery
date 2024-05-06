import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ForYouScreen extends StatefulWidget {
  const ForYouScreen({super.key});

  @override
  State<ForYouScreen> createState() => _ForYouScreenState();
}

class _ForYouScreenState extends State<ForYouScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Container(
              color: Colors.pink,
              height: 500,
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 15,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.network(
                      'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcS6HuPXKLP6UfXBrzMz42_2w-8nPjgCVZNmoA2AcNt_KXR8vcMdMra-IijGBznEsxwEFIwzRSRTlRE5kDM',
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 450,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Memories',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              (debugPrint('Press see all'));
                            },
                            icon: const Text(
                              'See All',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ),
                        ],
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
                            height: 375,
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
                                margin: const EdgeInsets.only(left: 220),
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
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
