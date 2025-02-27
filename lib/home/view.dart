import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_1/history/view.dart';
import 'package:test_1/profile/view.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeLogic(),
      builder: (ctr) {
        const List pages = [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Text(
                  // 'You have pushed the button this many times:',
                  'Home',
                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("",),
              ],
            ),
          ),
          HistoryPage(),
          ProfilePage()
        ];
        return Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: Center(child: pages.elementAt(ctr.bottomNavIndex.value),),
          bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
              ],
            currentIndex: ctr.bottomNavIndex.value,
            selectedItemColor: Colors.blue,
            onTap: (int value) => ctr.selectBottomNavigator(value),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => ctr.onAdd(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          )
      );
      },
    );
  }
}
