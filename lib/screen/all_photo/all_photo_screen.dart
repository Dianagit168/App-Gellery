import 'package:clone_photo_app/widgets/appbar_trans.dart';
import 'package:flutter/material.dart';

class AllPhotoScreen extends StatelessWidget {
  const AllPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarTrans(true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: const BouncingScrollPhysics(),
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
            const Padding(
              padding: EdgeInsets.only(top: 14, bottom: 18),
              child: Text(
                '3.217 Photos, 482 Videos',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
