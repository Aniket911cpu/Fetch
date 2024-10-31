import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Fetch')),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Action for the icon button
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: false,
          tabs: const [
            Tab(text: 'App'),
            Tab(text: 'Media'),
            Tab(text: 'Audio'),
            Tab(text: 'Files'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('App Content')),
          Center(child: Text('Audio Content')),
          Center(child: Text('Video Content')),
          Center(child: Text('Files Content')),
          Center(child: Text('Folders Content')),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              // Action for Send button
            },
            label: const Text('Send'),
            icon: const Icon(Icons.upload),
            heroTag: 'Send',
            shape: const RoundedRectangleBorder(),
            extendedPadding: const EdgeInsets.all(16.0),
          ),
          const SizedBox(width: 16),
          FloatingActionButton.extended(
            onPressed: () {
              // Action for Receive button
            },
            label: const Text('Receive'),
            icon: const Icon(Icons.download),
            heroTag: 'Receive',
            shape: RoundedRectangleBorder(),
            extendedPadding: const EdgeInsets.all(16.0),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}