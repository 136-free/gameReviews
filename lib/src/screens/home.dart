// import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var titlePS5 = ["eldenRing", "theWitcher3", "godOfWarRagnarok", "hades", "tetrisEffectConnected", "residentEvil4", "demonSSouls", "streetFighter6", "persona5TheRoyal", "rogueLegacy2", ];
    var usernames = ["Sam", "Takkun", "Daichi", "Mockey", "Toshi", "Daddy", "Coquita", "Minami", "Bao", "Jack", ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ), 
      body: ListView.builder(
        itemCount: titlePS5.length,
        itemBuilder: (context, index) {
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
                  usernames[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('『' + titlePS5[index] + '』をClip!'),
                trailing: Image.asset('images/'+ titlePS5[index] + '.jpeg'),
              )
          );
          },
      ),
    );
  }
}

// class ClipItem extends StatelessWidget {
//   final String tweet;
//
//   ClipItem({required this.tweet});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//             border: Border(
//                 bottom: BorderSide(
//                     color: Colors.grey
//                 )
//             )
//         ),
//         child:ListTile(
//           leading: CircleAvatar(
//             child: Icon(Icons.person),
//           ),
//           title: Text(
//             usernames[index],
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           subtitle: Text('『' + titlePS5[index] + '』をClip!'),
//           trailing: Image.asset('images/'+ titlePS5[index] + '.jpeg'),
//         )
//     );
//   }
// }