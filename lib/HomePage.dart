import 'package:flutter/material.dart';
import 'Applist.dart';
import 'AudioList.dart';
import 'Filelist.dart';
import 'MediaList.dart';
import 'package:fetch/Onboarding/OnboardingPage.dart';

class HomePage extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeMode;

  const HomePage({super.key, required this.themeMode});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _username = 'Guest';
  String _avatar = 'lib/assets/default_avatar.png';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
        title: const Center(child: Text('Fetch')),
        actions: [
          Switch(
            value: widget.themeMode.value == ThemeMode.dark,
            onChanged: (value) {
              widget.themeMode.value = value ? ThemeMode.dark : ThemeMode.light;
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
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
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(_avatar),
                    radius: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    _username,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
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
          Applist(),
          MediaList(),
          Audiolist(),
          Filelist(),
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
            shape: RoundedRectangleBorder(),
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