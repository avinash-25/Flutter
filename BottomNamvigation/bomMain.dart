import 'package:flutter/material.dart';
import 'package:unn/heroEx/heroClass.dart';

class bomMain extends StatefulWidget {
  bomMain({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<bomMain> {
  var _currentPage = 0;
  var _pages = [
    Text("Page 1 - MCA SEM 1"),
    Text("Page 1 - MCA SEM 2"),
    Text("Page 1 - MCA SEM 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Bottom navigation example",
      home: Scaffold(
        body: Center(child: _pages.elementAt(_currentPage)),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.bookmarks), label: 'MCA 1'),
            BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'imageApp'),
            BottomNavigationBarItem(icon: Icon(Icons.question_answer), label: 'HeroApp'),
          ],
          currentIndex: _currentPage,
          fixedColor: Colors.red,
          onTap: (int inIndex) {
            setState(() {
              _currentPage = inIndex;
              if (_currentPage == 2) {
                // Navigate to HeroClass when the third tab is selected
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HeroClass()),
                );
              }
            });
          },
        ),
      ),
    );
  }
}
