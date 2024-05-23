import 'package:clone_photo_app/data/people_and_place.dart';
import 'package:clone_photo_app/model/albums_cate_model.dart';
import 'package:flutter/material.dart';

class SeachScreen extends StatelessWidget {
  const SeachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          //color: Colors.pink,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Search',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 16),
                child: Container(
                  height: 38,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 216, 215, 215),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.grey[600],
                      ),
                      hintText: 'Photos, People, Places...',
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ),
              listWidgetOnSearch(context, BoxShape.circle, 'People', people),
              listWidgetOnSearch(context, BoxShape.rectangle, 'Places', place),
              listWidgetOnSearch(
                  context, BoxShape.rectangle, 'Categories', categories),
              groups(context, 'Groups', categories)
            ],
          ),
        ),
      ),
    );
  }
}

Widget listWidgetOnSearch(BuildContext context, BoxShape shape, String contain,
    List<AlbumsCateModel> data) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 4, top: 8),
        child: Text(
          contain,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        //color: Colors.pink,
        height: 160,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: shape == BoxShape.rectangle
                        ? BorderRadius.circular(4)
                        : null,
                    shape: shape,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(data[index].thumnail),
                    ),
                  ),
                  height: 110,
                  width: 110,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    data[index].cateName,
                  ),
                )
              ],
            );
          },
        ),
      ),
      const Divider(
        height: 1,
        thickness: 0.4,
        color: Colors.grey,
      ),
    ],
  );
}

Widget groups(
    BuildContext context, String content, List<AlbumsCateModel> data) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 4, top: 8),
        child: Text(
          content,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 10),
              child: Row(children: [
                Container(
                  height: 110,
                  width: 54,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(data[index].thumnail),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 1),
                  height: 110,
                  width: 54,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(people[index].thumnail),
                      )),
                ),
              ]),
            );
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Recently Searched',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Text(
                'Clear',
                style: TextStyle(color: Colors.blueAccent, fontSize: 18),
              ),
            )
          ],
        ),
      ),
      const Divider(
        height: 0.5,
        thickness: 0.4,
        color: Colors.grey,
      ),
      IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: const Text(
          'Favorites',
          style: TextStyle(color: Colors.blueAccent, fontSize: 20),
        ),
      ),
      const Divider(
        height: 0.5,
        thickness: 0.4,
        color: Colors.grey,
      ),
    ],
  );
}
