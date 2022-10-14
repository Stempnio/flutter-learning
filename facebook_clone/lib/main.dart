import 'package:facebook_clone/view/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookClone());
}

class FacebookClone extends StatelessWidget {
  const FacebookClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: light
      title: "Facebook clone",
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void _changeCurrentScreen(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> screens = [
    const HomePage(),
    const Center(
      child: Text("2"),
    ),
    const Center(
      child: Text("3"),
    ),
    const Center(
      child: Text("4"),
    ),
    const Center(
      child: Text("5"),
    ),
    const Center(
      child: Text("6"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: screens.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: _changeCurrentScreen,
          showSelectedLabels: false,
          iconSize: 35,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Home',
            ),
          ],
        ),
      ),
    );
  }
}
