import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  // onTap 이벤트 핸들러
  void handleTap(int newIndex) {
    setState(() {
      print(newIndex);
      index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text("Draggable Home"),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
      ],
      headerWidget: headerWidget(context),
      headerBottomBar: headerBottomBarWidget(),
      body: [
        listView(),
      ],
      stretchTriggerOffset: 400,
      headerExpandedHeight: 0.4,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
          BottomNavigationBarItem(icon: Icon(Icons.edit_note), label: 'modify'),
          BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'delete'),
        ],
      ),
      fullyStretchable: false,
      // expandedBody: const CameraPreview(),
      backgroundColor: Colors.white,
      appBarColor: Colors.teal,
    );
  }
  Row headerBottomBarWidget() {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget headerWidget(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          "Title",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.white70),
        ),
      ),
    );
  }

  ListView listView() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
        color: Colors.white70,
        child: ListTile(
          leading: CircleAvatar(
            child: Text("$index"),
          ),
          title: const Text("Title"),
          subtitle: const Text("Subtitle"),
        ),
      ),
    );
  }
}