import 'package:flutter/material.dart';


class AirConditionerPage extends StatefulWidget {
  _AirConditionerState createState() => _AirConditionerState();
}
class _AirConditionerState extends State<AirConditionerPage> {

  int _temperture = 27;

  void _incrementTemperture () {
    setState(() {
      _temperture++;
    });
  }

  void _decrementTemperture () {
    setState(() {
      _temperture--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('エアコン')),
      body: Center(
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('現在の状態: ', style: Theme.of(context).textTheme.headlineSmall),
              Text('冷房27℃', style: Theme.of(context).textTheme.headlineMedium)
              ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(onPressed: _decrementTemperture, child: Icon(Icons.remove_outlined)),
              SizedBox(width: 25,),
              Text('$_temperture ℃', style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(width: 25,),
              OutlinedButton(onPressed: _incrementTemperture, child: Icon(Icons.add))
            ]
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            height: 100,
             child: ElevatedButton(
              onPressed: () {}, child: Text('冷房'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent[300])
              )
            )
          ),
          Container(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: Text('暖房'), style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent))),
          Container(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: Text('Off'), style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[900]))),
        ]),)
    );
  }
}
