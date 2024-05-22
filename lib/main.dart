import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
    AnotherScreen(),
    FifthScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar Example'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_display),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit), // 예시로 추가된 다섯 번째 아이콘
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black, // 선택되지 않은 아이템의 색상을 검정색으로 설정
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 315,
          height: 43,
          color: Colors.grey, // 네모의 색상
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.search,
                color: Colors.white, // 아이콘의 색상
              ),
              SizedBox(width: 8), // 아이콘과 글자 사이의 간격
              Text(
                '검색', // 네모 안에 들어갈 글자
                style: TextStyle(
                  color: Colors.white, // 글자의 색상
                  fontSize: 16, // 글자 크기
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20), // 네모와 추가된 요소 사이의 간격
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '최근검색',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '모두보기',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(height: 40), // 최근검색/모두보기와 추가된 요소 사이의 간격
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.radio_button_unchecked,
              color: Colors.black, // 추가된 아이콘의 색상
            ),
            SizedBox(width: 8), // 아이콘과 글자 사이의 간격
            Text(
              '아하하하하', // 추가된 글자
              style: TextStyle(
                color: Colors.black, // 글자의 색상
                fontSize: 16, // 글자 크기
              ),
            ),
          ],
        ),
        SizedBox(height: 20), // '아하하하하하'와 아래 요소 사이의 간격
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.black,
                ),
                SizedBox(width: 8), // 아이콘과 글자 사이의 간격
                Text(
                  '갱갱갱갱갱갱갱우',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // 각 가로 그룹 사이의 간격
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Text(
                  '밍쥬쥬쥬쥬쥬쥬',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Text(
                  '신나나나나나',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Text(
                  '유랑랑랑랑랑랑',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Another Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Fifth Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
