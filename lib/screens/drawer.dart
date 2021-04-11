import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final List<Map<String, dynamic>> navItem = [
    {'title': 'Home', 'icon': Icon(Icons.home)},
    {'title': 'Setting', 'icon': Icon(Icons.settings)},
    {'title': 'Cart', 'icon': Icon(Icons.shopping_cart)}
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
//        padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/drawer-header.jpg'))),
          accountEmail: Text('muhammadhamzahaneef@gmail.com'),
          accountName: Text('Muhammad Hamza Haneef'),
          currentAccountPicture: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.transparent,
            backgroundImage: ExactAssetImage('assets/images/mypic.jpg'),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Categories'),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/categories',
                  );
                },
              )
            ],
          ),
        )
      ],
    ));
  }
}
