import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<IconData> icons = [
    Icons.star,
    Icons.favorite,
    Icons.music_note,
    Icons.camera,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.accessibility,
    Icons.cake,
    Icons.car_rental,
    Icons.movie,
    Icons.directions_bike,
    Icons.beach_access,
    Icons.attach_money,
    Icons.book,
    Icons.brush,
    Icons.casino,
    Icons.desktop_mac,
    Icons.local_pizza,
    Icons.pets,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Add your logic when an icon is tapped
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Icon(icons[index], size: 36.0, color: Colors.lightBlueAccent),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
