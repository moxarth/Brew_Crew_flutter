import 'package:brew_crew/models/brew.dart';
import 'package:flutter/material.dart';

class BrewTile extends StatelessWidget {
  final Brew brew;
  BrewTile({this.brew});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 3.0, 20.0, 0.0),
        child: ListTile(
          title: Text(brew.name),
          subtitle: Text('Takes ${brew.sugars} sugar(s)'),
          leading: CircleAvatar(
            radius: 23.0,
            backgroundColor: Colors.brown[brew.strength],
          ),
        ),
      ),
    );
  }
}
