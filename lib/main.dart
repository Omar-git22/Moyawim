import 'package:flutter/material.dart';
import 'package:moyawim2/Authentication_services/authservice.dart';
import 'package:moyawim2/Constants_Data/Data.dart';
import 'package:moyawim2/Wrapper/wrapper.dart';
import 'package:provider/provider.dart';
import 'Authentication_services/User.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    getJobs();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: StreamProvider<User>.value(
          value: AuthService().user,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Wrapper(),
          ),
        ),
    );
  }
}
