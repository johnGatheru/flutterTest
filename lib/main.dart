import 'package:flutter/material.dart';

import 'home_page.dart';
import 'profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  List<Widget> pages = const [HomePage(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () => {debugPrint('nimeguzwa')},
        child: const Icon(Icons.accessible_outlined),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.person_3_outlined), label: 'Profile')
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}

class TestingBody extends StatefulWidget {
  const TestingBody({super.key});
  final String name = "we are the people";
  @override
  State<TestingBody> createState() => _TestingBodyState();
}

class _TestingBodyState extends State<TestingBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [Text('we will come')],
      ),
    );
  }
}
