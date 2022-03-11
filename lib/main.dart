import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SimcoMart',
        theme: ThemeData(
          brightness: (this.isDark == true) ? Brightness.dark : Brightness.light,
          primarySwatch: Colors.green
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simco Mart'),
        elevation: 10.0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue.shade50,
      ),
      body: Container(
        child: Center(
          child: Text(
            'Welcome To Home Page',
            style: TextStyle(fontSize: 30.0, color: Colors.redAccent),
          ),
        ),
      ),
    );
  }
}


// class MyApp1 extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     throw UnimplementedError();
//   }
//
// }