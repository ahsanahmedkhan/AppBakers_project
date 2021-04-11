import 'package:app_bakerz/screens/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[Icon(Icons.shopping_cart), Icon(Icons.shop)],
        title: Text('Home'),
      ),
      drawer: AppDrawer(),

      body: Column(
        children: <Widget>[
          if (currentIndex == 0)
            Center(
              child: Text(
                'Tap on first screen',
                style: TextStyle(fontSize: 30.0, color: Colors.lightBlue),
              ),
            ),
          if (currentIndex == 1)
            Center(
              child: Text(
                'Tap on Second screen',
                style: TextStyle(fontSize: 30.0, color: Colors.lightBlue),
              ),
            )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Home'))
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          print(index);
          setState(() {
            currentIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //TODO : HERE WE CAN FURTHER SEE REGARDING ANIMATION
    );
  }
}
