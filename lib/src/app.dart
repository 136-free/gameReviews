import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/mypage.dart';
import 'screens/news.dart';
import 'screens/search.dart';
import 'screens/trend.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GAME REVIEWS',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GAME REVIEWS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const _screens = [
    HomeScreen(),
    TrendScreen(),
    SearchScreen(),
    NewsScreen(),
    MypageScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Trend',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode_comment),
            label: 'News',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Mypage'
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.white,
      ),
    );
  }
  Widget _photoItem(String image, int score, int played, int clip) {
    var assetsImage = "images/" + image + ".jpeg";
    return Column(
        children: [
          Container(
            height: 100,
            child: Image.asset(assetsImage, fit: BoxFit.cover,), // パッケージ画像
          ),
          Container(
            height: 50,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.grey[300],
                      child: Column(
                          children: [
                            Icon(Icons.videogame_asset, color: Colors.grey,),
                            Text("$played", style: TextStyle(color: Colors.grey),),
                          ]
                      )
                  ),
                  Container(
                      color: Colors.grey[300],
                      child: Column(
                          children: [
                            Icon(Icons.note_add, color: Colors.grey, ),
                            Text("$clip", style: TextStyle(color: Colors.grey),),
                          ]
                      )
                  ),
                  Container(
                      child: Column(
                          children: [
                            Icon(Icons.star, color: Colors.amber, ),
                            Text("$score", style: TextStyle(color: Colors.amber),),
                          ]
                      )
                  ),
                ]
            ),
          ),
        ]
    );
  }
}