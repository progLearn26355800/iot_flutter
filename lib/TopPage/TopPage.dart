// coding: utf-8


import 'package:flutter/material.dart';
import 'package:iot_flutter/TopPage/IoTCard.dart';
import 'package:iot_flutter/TopPage/SideNavigation.dart';

/*

おうちIoT のトップページ

サイドバーにメニュー一覧が常に表示されるようにしたい
トップページにはかく IoT の状態的なやつをCardで表示する
*/


class TopPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('おうちIoT トップページ'),),
      body: Row(
        children: [
          Expanded(child: PostList(),)
          ]
    ));
  }

}
