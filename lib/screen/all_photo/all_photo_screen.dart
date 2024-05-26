import 'package:clone_photo_app/widgets/appbar_trans.dart';
import 'package:flutter/material.dart';

class AllPhotoScreen extends StatelessWidget {
  const AllPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarTrans(),
      body: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          mainAxisExtent: 80,
        ),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Image.network(
            'https://static.politico.com/1a/e3/1223ba8149b9a4ff335be9eb1ff1/191222-kim-jong-un-gty-773.jpg',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
