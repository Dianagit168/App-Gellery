import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Photo App')),
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
                    'https://static.politico.com/1a/e3/1223ba8149b9a4ff335be9eb1ff1/191222-kim-jong-un-gty-773.jpgr');
              })),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.amber, items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(
            Icons.home,
            color: (Colors.purple),
          ),
        ),
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(
            Icons.home,
            color: (Colors.pink),
          ),
        ),
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(
            Icons.home,
            color: (Colors.amber),
          ),
        ),
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(
            Icons.home,
            color: (Colors.red),
          ),
        )
      ]),
    );
  }
}
