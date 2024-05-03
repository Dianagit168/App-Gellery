import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return tapBar(context);
    // return Column(
    //   children: [
    //     SizedBox(
    //       height: 600,
    //       width: MediaQuery.of(context).size.width,
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
    //     ),
    //     tapBar(context)
    //   ],
    // );
  }
}

Widget tapBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 20,
      right: 20,
      top: 8,
    ),
    child: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            // SizedBox(
            //   height: 600,
            //   width: MediaQuery.of(context).size.width,
            //   child: GridView.builder(
            //     shrinkWrap: true,
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 5,
            //       crossAxisSpacing: 2,
            //       mainAxisSpacing: 2,
            //       mainAxisExtent: 80,
            //     ),
            //     itemCount: 1000,
            //     itemBuilder: (context, index) {
            //       return Image.network(
            //         'https://static.politico.com/1a/e3/1223ba8149b9a4ff335be9eb1ff1/191222-kim-jong-un-gty-773.jpg',
            //         fit: BoxFit.cover,
            //       );
            //     },
            //   ),
            // ),
            const Expanded(
              child: TabBarView(
                children: [
                  Text('Home'),
                  Text('Owned'),
                  Text('Following'),
                  Text('Enrollment'),
                ],
              ),
            ),
            SizedBox(
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                isScrollable: true,
                physics: const ClampingScrollPhysics(),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(76, 0, 102, 255),
                ),
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: const Color.fromARGB(255, 2, 28, 60),
                labelColor: const Color.fromARGB(255, 0, 102, 255),
                tabs: const [
                  Text('Home'),
                  Text('Owned'),
                  Text('Following'),
                  Text('Enrollment'),
                ],
              ),
            ),
            // const Expanded(
            //   child: TabBarView(
            //     children: [
            //       Text('Home'),
            //       Text('Owned'),
            //       Text('Following'),
            //       Text('Enrollment'),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    ),
  );
}
