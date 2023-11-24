import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uts_21552011124_dandiardiyansyah/screen/clock.dart';
import 'package:uts_21552011124_dandiardiyansyah/screen/date.dart';
import 'package:uts_21552011124_dandiardiyansyah/screen/grid.dart';
import 'package:uts_21552011124_dandiardiyansyah/screen/list.dart';
import 'package:uts_21552011124_dandiardiyansyah/screen/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _index = 0;
  final List<Widget> _screens = [
    const GridScreen(),
    const DateScreen(),
    const ListScreen(),
    const Clock(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TOKO AE'), centerTitle: true),
      body: _screens[_index],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _index,
        height: 60,
        items: const [
          Icon(Icons.grid_view, size: 30),
          Icon(Icons.date_range, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.punch_clock, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.black,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
