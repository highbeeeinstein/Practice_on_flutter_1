import 'package:flutter/material.dart';

class Alaye extends StatefulWidget {
  const Alaye({Key? key}) : super(key: key);

  @override
  _AlayeState createState() => _AlayeState();
}

class _AlayeState extends State<Alaye> {
  Choice _selectedOption = choices[0];
  void _select(Choice choice) {
    setState(() {
      _selectedOption = choice;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Choice>(
        icon: Icon(Icons.settings, color: Colors.red),
        // onSelected: _select,
        itemBuilder: (BuildContext context) {
          return choices.skip(0).map((Choice choice) {
            return PopupMenuItem<Choice>(
              value: choice,
              child: Text(choice.name),
            );
          }).toList();
        });
    // child:  Padding(
    //       padding: const EdgeInsets.all(10.0),
    //       child: ChoiceCard(choice: _selectedOption),
    //     ),
    // );
  }
}

class Choice {
  const Choice({required this.name, required this.icon});
  final String name;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(name: 'My Profile', icon: Icons.wifi),
  const Choice(name: 'Log out', icon: Icons.bluetooth),
  // const Choice(name: 'Battery', icon: Icons.battery_alert),
  // const Choice(name: 'Storage', icon: Icons.storage),
];
