import 'package:flutter/material.dart';

class ForYouScreen extends StatefulWidget {
  const ForYouScreen({super.key});

  @override
  State<ForYouScreen> createState() => _ForYouScreenState();
}

class _ForYouScreenState extends State<ForYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            mainAxisExtent: 80,
          ),
          itemCount: 1000,
          itemBuilder: (context, index) {
            return Image.network(
              'https://cdn.britannica.com/65/194465-050-50F2A305/Vladimir-Putin-questions-news-conference-2016.jpg',
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
