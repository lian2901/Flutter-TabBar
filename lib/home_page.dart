import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTabIndex = 0;

  List<Tab> _tabs = [
    Tab(
      text: 'SSH',
    ),
    Tab(
      text: 'LOG',
    )
  ];
  @override
  Widget build(BuildContext context) {
    print('build');
    return DefaultTabController(
      initialIndex: 0,
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Row(
            children: [
              Text(
                'HTTP',
                style: TextStyle(color: Colors.green[700]),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Custom')
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(_currentTabIndex == 0
                    ? Icons.extension_outlined
                    : Icons.delete)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          bottom: TabBar(
            onTap: (tabBarIndex) {
              setState(() {
                _currentTabIndex = tabBarIndex;
              });
            },
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'Tab 1',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'Tab 2',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
