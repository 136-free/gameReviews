import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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

  // int _currentPageIndex = 0;
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _currentPageIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var gridPS5 = ["eldenRing", "theWitcher3", "godOfWarRagnarok", "hades", "tetrisEffectConnected", "residentEvil4"];
    var gridSwitch = ["breathOfTheWild", "superMarioOdyssey", "theHouseInFataMorgana", "tearsOfTheKingdom", "portal", "tetrisEffectSwitch"];
    var scoresPS5 = [96, 94, 94, 93, 93, 92];
    var scoresSwitch = [97, 97, 96, 96, 95, 94];
    var playedMen = [0, 1, 2, 3, 4, 5];
    var clips = [0, 1, 2, 3, 4, 5];
    return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // TRY THIS: Try changing the color here to a specific color (to
            // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
            // change color while the other colors stay the same.
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(widget.title),
            bottom:  const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(text: 'PS5',),
                Tab(text: 'Switch',),
                Tab(text: 'XBSX',),
                Tab(text: 'PC',),
              ],
            ),
          ),
          body:  TabBarView(
              children: <Widget>[
                GridView.builder( // PS5タブ
                    itemCount: gridPS5.length, // 並べるアイテム数
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 10, // ボックス左右間のスペース
                      mainAxisSpacing: 10, // ボックス上下間のスペース
                      crossAxisCount: 3, // ボックスを横に並べる数
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      if (index >= gridPS5.length) {
                        gridPS5.addAll(["eldenRing", "theWitcher3", "godOfWarRagnarok", "hades", "tetrisEffectConnected", "residentEvil4"]);
                      }
                      return _photoItem(gridPS5[index], scoresPS5[index], playedMen[index], clips[index]);
                    }
                ),
                GridView.builder( // Switchタブ
                    itemCount: gridSwitch.length, // 並べるアイテム数
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 10, // ボックス左右間のスペース
                      mainAxisSpacing: 10, // ボックス上下間のスペース
                      crossAxisCount: 3, // ボックスを横に並べる数
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      if (index >= gridSwitch.length) {
                        gridSwitch.addAll(["breathOfTheWild", "superMarioOdyssey", "theHouseInFataMorgana", "tearsOfTheKingdom", "portal", "tetrisEffectSwitch"]);
                      }
                      return _photoItem(gridSwitch[index], scoresSwitch[index], playedMen[index], clips[index]);
                    }
                ),
              ]
          ),
          // GridView.builder(
          //     itemCount: grid.length, // 並べるアイテム数
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       childAspectRatio: 0.7,
          //       crossAxisSpacing: 10, // ボックス左右間のスペース
          //       mainAxisSpacing: 10, // ボックス上下間のスペース
          //       crossAxisCount: 3, // ボックスを横に並べる数
          //     ),
          //     itemBuilder: (BuildContext context, int index) {
          //       if (index >= grid.length) {
          //         grid.addAll(["eldenRing", "theWitcher3", "godOfWarRagnarok", "hades", "tetrisEffectConnected", "residentEvil4"]);
          //       }
          //       return _photoItem(grid[index], scores[index], playedMen[index], clips[index]);
          //     }
          // ),
          bottomNavigationBar: BottomNavigationBar(
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
        )
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
