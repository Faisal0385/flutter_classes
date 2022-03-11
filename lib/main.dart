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
        // backgroundColor: Colors.amberAccent,
        title: Text('Simco Mart'),
        // centerTitle: true,
        elevation: 10.0,
        shadowColor: Colors.redAccent,
        toolbarOpacity: 1.0,
        toolbarHeight: 100.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.favorite),
          IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
        bottom: ,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue.shade50,
      ),
      body: Container(
        color: Colors.green.shade100,
        child: Center(
          child: Text(
            'Welcome To Home Page',
            style: TextStyle(fontSize: 30.0, color: Colors.redAccent),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
        onPressed: () { print('pressed');  },
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