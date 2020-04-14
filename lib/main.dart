import 'package:flutter/material.dart';
import 'package:kitchen_inventory_app/screens/input_screen.dart';
import 'package:kitchen_inventory_app/screens/kitchen_screen.dart';
import 'package:kitchen_inventory_app/screens/search_screen.dart';

void main() => runApp(KitchenInventoryApp());

class KitchenInventoryApp extends StatefulWidget {
  @override
  _KitchenInventoryAppState createState() => _KitchenInventoryAppState();
}

//
class _KitchenInventoryAppState extends State<KitchenInventoryApp> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    KitchenScreen(),
    InputScreen(),
    SearchScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Kitchen Inventory'),
        ),
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.kitchen),
              title: Text('Kitchen'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.input),
              title: Text('Input'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
