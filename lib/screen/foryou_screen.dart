import 'package:clone_photo_app/data/photo_data.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ForYouScreen extends StatelessWidget {
  const ForYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 70),
              child: Text(
                'For You',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                const Divider(
                  height: 20,
                  thickness: 0.3,
                  indent: 20,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 550,
                  child: PageView.builder(
                    controller: PageController(viewportFraction: 0.93),
                    itemCount: forYouPhoto.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.fromLTRB(8, 4, 8, 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(forYouPhoto[index].image),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: forYouPhoto[index].mainColum,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    LucideIcons.heart,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    child: Icon(
                                      LucideIcons.circleEllipsis,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: forYouPhoto[index].mainRow,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 26, vertical: 30),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Cambodia',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '25 SEP 2022',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  height: 20,
                  thickness: 0.3,
                  indent: 20,
                  color: Colors.grey,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26),
                  child: Text(
                    'Featured Photos',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: PageView.builder(
                    controller: PageController(viewportFraction: 0.93),
                    itemCount: forYouPhoto.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 400,
                            margin: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(forYouPhoto[index].image),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              forYouPhoto[index].subTitle,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
            // GridView.builder(
            //   physics: const BouncingScrollPhysics(),
            //   shrinkWrap: true,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 1,
            //     mainAxisExtent: 450,
            //   ),
            //   itemCount: 10,
            //   itemBuilder: (context, index) {
            //     return Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(left: 15, bottom: 8),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               const Text(
            //                 'Memories',
            //                 style: TextStyle(
            //                   fontSize: 23,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //               IconButton(
            //                 onPressed: () {
            //                   (debugPrint('Press see all'));
            //                 },
            //                 icon: const Text(
            //                   'See All',
            //                   style:
            //                       TextStyle(fontSize: 20, color: Colors.blue),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Stack(
            //           children: [
            //             Card(
            //               elevation: 15,
            //               clipBehavior: Clip.antiAliasWithSaveLayer,
            //               shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(12),
            //               ),
            //               child: Image.network(
            //                 'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcS6HuPXKLP6UfXBrzMz42_2w-8nPjgCVZNmoA2AcNt_KXR8vcMdMra-IijGBznEsxwEFIwzRSRTlRE5kDM',
            //                 fit: BoxFit.cover,
            //                 height: 375,
            //               ),
            //             ),
            //             Positioned(
            //               top: 18,
            //               left: 22,
            //               child: Row(
            //                 children: [
            //                   const Text(
            //                     'New York',
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 19,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                   Container(
            //                     margin: const EdgeInsets.only(left: 220),
            //                     decoration: const BoxDecoration(
            //                         color: Color.fromARGB(243, 115, 117, 126),
            //                         shape: BoxShape.circle),
            //                     child: const Padding(
            //                       padding: EdgeInsets.all(6.0),
            //                       child: Icon(
            //                         LucideIcons.moreHorizontal,
            //                         size: 17,
            //                         color: Colors.white,
            //                       ),
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ],
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
