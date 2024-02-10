import 'package:flutter/material.dart';
import 'package:goal_app/provider/userprovider.dart';
import 'package:goal_app/screens/listdata.dart';
import 'package:goal_app/screens/login.dart';
import 'package:goal_app/screens/registration.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Login(),
          '/registration': (context) => Registration(),
          '/login': (context) => Login(),
          '/listdata': (context) => ListDataPage(),
        },
      ),
    );
  }
}
