// import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    List<Tweet> tweets = [
      Tweet(username: "麦らァ", title: "eldenRing", url: "https://1.bp.blogspot.com/-tVeC6En4e_E/X96mhDTzJNI/AAAAAAABdBo/jlD_jvZvMuk3qUcNjA_XORrA4w3lhPkdQCNcBGAsYHQ/s1048/onepiece01_luffy.png", ),
      Tweet(username: "広告狩りのゾロ", title: "theWitcher3", url: "https://1.bp.blogspot.com/-rzRcgoXDqEg/YAOTCKoCpPI/AAAAAAABdOI/5Bl3_zhOxm07TUGzW8_83cXMOT9yy1VJwCNcBGAsYHQ/s1041/onepiece02_zoro_bandana.png", ),
      Tweet(username: "ナミ", title: "godOfWarRagnarok", url: "https://1.bp.blogspot.com/-2ut_UQv3iss/X-Fcs_0oAII/AAAAAAABdD8/jrCZTd_xK-Y6CP1KwOtT_LpEpjp-1nvxgCNcBGAsYHQ/s1055/onepiece03_nami.png", ),
      Tweet(username: "乞食の王様こじキング", title: "hades", url: "https://1.bp.blogspot.com/-mZpzgXC1Sxk/YAOTCAKwWTI/AAAAAAABdOM/5B4hXli0KLU5N-BySHgjVbhZscKLSE-bQCNcBGAsYHQ/s1025/onepiece04_usopp_sogeking.png", ),
      Tweet(username: "サンジ", title: "tetrisEffectConnected", url: "https://1.bp.blogspot.com/-HPG_x7XPky8/X-FctLTLkKI/AAAAAAABdEE/xs4T8m0FiBAFptXHGQhQ2c9ZmVWtaeQSgCNcBGAsYHQ/s1028/onepiece05_sanji.png", ),
      Tweet(username: "麦らァ", title: "residentEvil4", url: "https://1.bp.blogspot.com/-tVeC6En4e_E/X96mhDTzJNI/AAAAAAABdBo/jlD_jvZvMuk3qUcNjA_XORrA4w3lhPkdQCNcBGAsYHQ/s1048/onepiece01_luffy.png", ),
      Tweet(username: "ニートニート・チョッパー", title: "demonSSouls", url: "https://1.bp.blogspot.com/--9Rl2O4BBN0/X-Fct8K5mqI/AAAAAAABdEI/yLOziAqJO34fwn73AolVP0e42A2h-ql1QCNcBGAsYHQ/s992/onepiece06_chopper.png", ),
      Tweet(username: "ロビん", title: "streetFighter6", url: "https://1.bp.blogspot.com/-JiNpsjnPn7g/X-FcuWcU37I/AAAAAAABdEQ/P5r3wBMTRegjl7njCk4zWBkdoay44-T2gCNcBGAsYHQ/s1151/onepiece07_robin.png", ),
      Tweet(username: "リリー・フンラキー", title: "persona5TheRoyal", url: "https://1.bp.blogspot.com/-H8YBA_SpxGs/X-Fcu75hh_I/AAAAAAABdEU/WRKUa03ypYor3TwvhziHAnSEcTN4Noq0gCNcBGAsYHQ/s1148/onepiece08_franky.png", ),
      Tweet(username: "ソウルペキンのブロック", title: "rogueLegacy2", url: "https://1.bp.blogspot.com/-KZ0MJgiPJHo/X__CLeY-zVI/AAAAAAABdNM/HnFYqUe0VQEzCWCqyMggibpk4kBRtFCpQCNcBGAsYHQ/s1102/onepiece09_brook.png", ),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Image.asset(
            'images/gamePad.png',
            height: 50,
            width: 50,
        ),
        actions: [Icon(Icons.settings), ],
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
  final String url;

  Tweet({required this.username, required this.title, required this.url, });
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
            // child: Icon(Icons.person),
            backgroundImage: NetworkImage(tweet.url),
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

class TweetItem extends StatelessWidget {
  final Tweet tweet;

  TweetItem({required this.tweet, });

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
            // child: Icon(Icons.person),
            backgroundImage: NetworkImage(tweet.url),
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