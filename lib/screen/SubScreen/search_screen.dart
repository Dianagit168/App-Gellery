import 'package:flutter/material.dart';

class SeachScreen extends StatelessWidget {
  const SeachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //color: Colors.pink,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('data'),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(16)),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 32,
                    ),
                    hintText: 'Photos, People, Places'),
              ),
            ),
            listWidgetOnSearch(context, null, BoxShape.circle, 'People')
          ],
        ),
      ),
    );
  }
}

Widget listWidgetOnSearch(
    BuildContext context, dynamic dataList, BoxShape shape, String contain) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(contain),
      SizedBox(
        //color: Colors.pink,
        height: 170,
        child: ListView.builder(
          // shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 30,
          itemBuilder: (context, index) {
            return Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: shape,
                  ),
                  height: 100,
                  width: 100,
                ),
                const Text('data')
              ],
            );
          },
        ),
      ),
      const Divider(
        height: 1,
        thickness: 1.5,
        color: Colors.grey,
      ),
    ],
  );
}
