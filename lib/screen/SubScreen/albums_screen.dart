import 'dart:ffi';

import 'package:clone_photo_app/data/albums_cate_data.dart';
import 'package:clone_photo_app/data/photo_data.dart';
import 'package:clone_photo_app/model/albums_cate_model.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //print(mediaAndTypeData.length);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                (debugPrint('Press +'));
              },
              icon: const Icon(
                LucideIcons.plus,
                size: 28,
                color: Colors.blue,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Albums',
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
                  padding: const EdgeInsets.only(left: 20, right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'My Albums',
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
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 525,
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 12,
                      mainAxisExtent: 250,
                    ),
                    itemCount: albumsCateList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 190,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(4),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    albumsCateList[index].thumnail),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              albumsCateList[index].cateName,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(albumsCateList[index].qty)
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 0.3,
              indent: 20,
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'People & Place',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
              height: 260,
              margin: EdgeInsets.zero,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: peopleAnPlace.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 190,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(4),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(peopleAnPlace[index].image),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          peopleAnPlace[index].title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(peopleAnPlace[index].subTitle)
                    ],
                  );
                },
              ),
            ),
            const Divider(
              height: 20,
              thickness: 0.3,
              indent: 20,
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Media Types',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: mediaAndTypeData.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return mediaItem(
                    context,
                    mediaAndTypeData[index].title,
                    mediaAndTypeData[index].leadingIcon,
                    mediaAndTypeData[index].qty,
                    index);
                // mediaAndTypeData.length);
              },
            ),
            const Divider(
              height: 20,
              thickness: 0.3,
              indent: 20,
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Utilities  ',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: utilitiesData.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return mediaItem(
                    context,
                    utilitiesData[index].title,
                    utilitiesData[index].leadingIcon,
                    utilitiesData[index].qty,
                    index);
                // mediaAndTypeData.length);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget mediaItem(BuildContext context, String name, IconData leadingIcon,
    num qty, int lastIndex) {
  return Column(
    children: [
      ListTile(
        leading: Icon(
          leadingIcon,
          size: 32,
          color: Colors.blueAccent,
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.blueAccent,
          ),
        ),
        contentPadding: const EdgeInsets.only(left: 20, right: 10),
        trailing: SizedBox(
          height: 30,
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                qty.toString(),
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 18,
                ),
              ),
              const Icon(
                LucideIcons.chevronRight,
                size: 24,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      lastIndex == 9
          ? const Text('')
          : const Divider(
              height: 10,
              thickness: 0.3,
              indent: 80,
              color: Colors.grey,
            )
    ],
  );
}
