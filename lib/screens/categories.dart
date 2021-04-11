import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<dynamic> categories = [];
  @override
  void initState() {
    // TODO: implement initState
    print('hello');
    http
        .get('https://greencommunitylaundry.herokuapp.com/api/categories')
        .then((response) {
      setState(() {
        categories = jsonDecode(response.body);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Center(
        child: categories.length > 0
            ? ListView(
                children: categories.map((category) {
                  return ListTile(
                    leading: Icon(Icons.http),
                    title: Text(category['name']),
                    subtitle: Text(category['description']),
                    onTap: () {
                      Navigator.pushNamed(context, '/categoriesItem',
                          arguments: category['name']);
                    },
                  );
                }).toList(),
              )
            : CircularProgressIndicator(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text('Mobiles'),
            icon: Icon(Icons.mobile_screen_share),
          ),
          BottomNavigationBarItem(
            title: Text('Laptop'),
            icon: Icon(Icons.laptop),
          ),
          BottomNavigationBarItem(
            title: Text('Watches'),
            icon: Icon(Icons.watch),
          ),
        ],
        onTap: (int index) {},
      ),
    );
  }
}
