import 'package:flutter/material.dart';

class SideNavigation extends StatefulWidget {
  @override
  _SideNavigationState createState() => _SideNavigationState();
}
class _SideNavigationState extends State<SideNavigation> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
        },);
      },
      destinations: [
        NavigationRailDestination(icon: Icon(Icons.wb_incandescent), label: Text('Illumination')),
        NavigationRailDestination(icon: Icon(Icons.air), label: Text('AirConditioner')),
        // NavigationRailDestination(icon: Icon(Icons.thumbs_up_down), label: Text('hogehoge')),
        // NavigationRailDestination(icon: Icon(Icons.thumbs_up_down), label: Text('hogehoge')),
        ],
    );
  }
}
