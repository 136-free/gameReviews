import 'package:flutter/material.dart';

class MypageScreen extends StatelessWidget {
  const MypageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var gridPS5 = ["eldenRing", "theWitcher3", "godOfWarRagnarok", "hades", "tetrisEffectConnected", "residentEvil4", "demonSSouls", "streetFighter6", "persona5TheRoyal", "rogueLegacy2", ];
    var gridSwitch = ["breathOfTheWild", "superMarioOdyssey", "theHouseInFataMorgana", "tearsOfTheKingdom", "portal", "tetrisEffectSwitch"];
    var scoresPS5 = [96, 94, 94, 93, 93, 92, 92, 92, 91, 90];
    var scoresSwitch = [97, 97, 96, 96, 95, 94];
    var playedMen = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var clips = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, ];
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // TRY THIS: Try changing the color here to a specific color (to
            // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
            // change color while the other colors stay the same.
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage("https://1.bp.blogspot.com/-H8YBA_SpxGs/X-Fcu75hh_I/AAAAAAABdEU/WRKUa03ypYor3TwvhziHAnSEcTN4Noq0gCNcBGAsYHQ/s1148/onepiece08_franky.png"),
                      )
                  ),
                  TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  TextSpan(
                    text: 'リリー・フンラキー',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ]
              ),
            ),
            bottom:  TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(
                  child: Column(
                    children: [
                      Icon(Icons.videogame_asset),
                      Text('6'),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Icon(Icons.note_add),
                      Text('10'),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Icon(Icons.person_add),
                      Text('4'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body:  TabBarView(
              children: <Widget>[
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
                        gridPS5.addAll(["eldenRing", "theWitcher3", "godOfWarRagnarok", "hades", "tetrisEffectConnected", "residentEvil4", "demonSSouls", "streetFighter6", "persona5TheRoyal", ]);
                      }
                      return _photoItem(gridPS5[index], scoresPS5[index], playedMen[index], clips[index]);
                    }
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child:Wrap(
                    spacing: 5,
                    children: [
                      Chip(label: Text('宮本茂'), backgroundColor: Colors.grey[200], ),
                      Chip(label: Text('小島秀夫'), backgroundColor: Colors.grey[200], ),
                      Chip(label: Text('虚淵玄'), backgroundColor: Colors.grey[200], ),
                      Chip(label: Text('横井軍平'), backgroundColor: Colors.grey[200], ),
                      Chip(label: Text('野村哲也'), backgroundColor: Colors.grey[200], ),
                      Chip(label: Text('堀井雄二'), backgroundColor: Colors.grey[200], ),
                      Chip(label: Text('飯野賢治'), backgroundColor: Colors.grey[200], ),
                      Chip(label: Text('桜井政博'), backgroundColor: Colors.grey[200], ),
                      Chip(label: Text('手塚卓志'), backgroundColor: Colors.grey[200], ),
                      Chip(label: Text('鈴木裕'), backgroundColor: Colors.grey[200], ),
                    ],
                  )
                )
              ]
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