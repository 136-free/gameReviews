import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('検索'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search, ),
                border: OutlineInputBorder(),
                hintText: 'ゲーム・ユーザー・タグ検索',
              ),
            ),
          ), 
          Container(
            width: double.infinity,
            height: 40,
            padding: EdgeInsets.all(10),
            color: Colors.grey[200],
            child: Text('カテゴリ')
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              title: Text('PS5'),
              leading: Icon(Icons.gamepad),
              trailing: Icon(Icons.chevron_right, color: Colors.grey[400],),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              title: Text('Switch'),
              leading: Icon(Icons.gamepad),
              trailing: Icon(Icons.chevron_right, color: Colors.grey[400],),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              title: Text('XBSX'),
              leading: Icon(Icons.gamepad),
              trailing: Icon(Icons.chevron_right, color: Colors.grey[400],),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              title: Text('PC'),
              leading: Icon(Icons.computer),
              trailing: Icon(Icons.chevron_right, color: Colors.grey[400],),
            ),
          ),
          Container(
              width: double.infinity,
              height: 40,
              padding: EdgeInsets.all(10),
              color: Colors.grey[200],
              child: Text('フォローする人をみつけよう！')
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              title: Text('おすすめユーザー'),
              leading: Icon(Icons.star, color: Colors.blue,),
              trailing: Icon(Icons.chevron_right, color: Colors.grey[400],),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              title: Text('Facebook'),
              leading: Icon(Icons.facebook, color: Colors.blue,),
              trailing: Icon(Icons.chevron_right, color: Colors.grey[400],),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.grey,
                          )
                        )
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.person),
                          Text('ID、ニックネーム'),
                          Icon(Icons.chevron_right, color: Colors.grey[400],)
                        ],
                      ),
                    ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.qr_code),
                          Text('QRコードで追加'),
                          Icon(Icons.chevron_right, color: Colors.grey[400],),
                        ],
                      )
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}