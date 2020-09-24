import 'package:brew_crew/services/auth.dart';
import 'package:brew_crew/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: _auth.user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Brew Crew',
        home: Wrapper(),
      ),
    );
  }
}
