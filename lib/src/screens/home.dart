// import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    List<Tweet> tweets = [
      Tweet(username: "Sam", title: "eldenRing", ),
      Tweet(username: "Daichi", title: "theWitcher3", ),
      Tweet(username: "Takkun", title: "godOfWarRagnarok", ),
      Tweet(username: "Mockey", title: "hades", ),
      Tweet(username: "Toshi", title: "tetrisEffectConnected", ),
      Tweet(username: "Hibiki", title: "residentEvil4", ),
      Tweet(username: "Nadja", title: "demonSSouls", ),
      Tweet(username: "Taro", title: "streetFighter6", ),
      Tweet(username: "Aimo", title: "persona5TheRoyal", ),
      Tweet(username: "King", title: "rogueLegacy2", ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ), 
      body: ListView.builder(
        itemCount: tweets.length,
        itemBuilder: (context, index) {
            return ClipItem(
                tweet: tweets[index],
            );
          },
      ),
    );
  }
}

class Tweet {
  final String username;
  final String title;

  Tweet({required this.username, required this.title});
}

class ClipItem extends StatelessWidget {
  final Tweet tweet;

  ClipItem({required this.tweet, });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Colors.grey
                )
            )
        ),
        child:ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text(
            tweet.username,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('『' + tweet.title + '』をClip!'),
          trailing: Image.asset('images/'+ tweet.title + '.jpeg'),
        )
    );
  }
}