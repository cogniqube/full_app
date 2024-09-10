import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_app/pages/Profile%20Page.dart';
import 'package:full_app/pages/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/svg/home.png', height: 24, width: 24,), label:'Home'),
          BottomNavigationBarItem(icon: Image.asset('assets/svg/heart.png', height: 24, width: 24,), label:'fav'),
          BottomNavigationBarItem(icon: Image.asset('assets/svg/add.png', height: 24, width: 24,), label:'add'),
          BottomNavigationBarItem(icon: Image.asset('assets/svg/speech-bubble.png', height: 24, width: 24,), label:'message'),
          BottomNavigationBarItem(icon: Image.asset('assets/svg/person.png', height: 24, width: 24,), label:'profile'),

        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: true,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: Text('Favorite'),),
    Center(child: Text('Add Post'),),
    Center(child: Text('Message'),),
    ProfilePage(),
  ];
}
