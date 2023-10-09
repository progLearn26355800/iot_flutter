import 'package:flutter/material.dart';


class IlluminationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('電気')),
      body: Center(
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('現在の状態: '), Text('全灯')]
            ),
          Container(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: Text('全灯'), style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[100]))),
          Container(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: Text('常夜'), style: ElevatedButton.styleFrom(backgroundColor: Colors.amber))),
          Container(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: Text('消灯'), style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[900]))),
        ]),)
    );
  }
}
