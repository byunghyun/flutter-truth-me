import 'package:flutter/material.dart';

class BottomNavi extends StatefulWidget {
  final int currentIndex;
  final void Function(int newIndex) onTap;

  const BottomNavi({Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard), label: 'dashboard'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
        BottomNavigationBarItem(icon: Icon(Icons.edit_note), label: 'modify'),
        BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'delete'),
      ],
      currentIndex: widget.currentIndex,
      onTap: (newIndex) => widget.onTap(newIndex),
    );
  }
}
