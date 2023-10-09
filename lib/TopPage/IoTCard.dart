// coding: utf-8

import 'package:flutter/material.dart';
import 'package:iot_flutter/AirConditioner/AirConditionerPage.dart';
import 'package:iot_flutter/illumination/IlluminationPage.dart';


/*

各IoTの概要的なやーつ
カードタップすると操作画面的なやつに移動したいなぁ

*/



class _Post extends StatelessWidget {
  final String name;
  final IconData icon;
  final String status;
  final Color colorPrimary;
  final Color colorPositive;
  final String operationButton;
  final Function() navigationFunction;

  const _Post({
    Key? key,
    required this.name,
    required this.icon,
    required this.status,
    required this.colorPrimary,
    required this.colorPositive,
    required this.operationButton,
    required this.navigationFunction
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Card(
        elevation: 8,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            ListTile(
              leading: ClipOval(
                child: Container(
                  color: colorPrimary,
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Icon(icon),
                  ),
                ),
              ),
              title: Text(name),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 72),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      border: Border.all(color: colorPrimary, width: 4),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(width: 8),
                  Flexible(child: Text(status)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: colorPrimary, width: 2),
                      ),
                    ),
                  ),
                  // SizedBox(width: 24),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: colorPositive,
                        backgroundColor: colorPositive.withOpacity(0.2),
                      ),
                      onPressed: () {navigationFunction();},
                      child: Text(operationButton),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IlluminationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Post(
      name: '電気',
      icon: Icons.wb_incandescent,
      status: 'ライト: 消えてます',
      colorPrimary: Colors.greenAccent,
      colorPositive: Colors.blueAccent,
      operationButton: '操作画面へ',
      navigationFunction: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return IlluminationPage();
          })
        );
      },
    );
  }
}

class _AirConditionerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Post(
      name: 'エアコン',
      icon: Icons.air,
      status: 'エアコン: 冷房27℃',
      colorPrimary: Colors.deepOrangeAccent,
      colorPositive: Colors.blueAccent,
      operationButton: '操作画面へ',
      navigationFunction: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return AirConditionerPage();
          })
        );
      },
    );
  }
}

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 48),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView(
              children: [
                _IlluminationCard(),
                _AirConditionerCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
