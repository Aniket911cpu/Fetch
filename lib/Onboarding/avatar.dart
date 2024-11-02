import 'package:flutter/material.dart';

class AvatarSelectionPage extends StatelessWidget {
  final List<String> avatars = [
    'lib/assets/avatar1.png',
    'lib/assets/avatar2.png',
    'lib/assets/avatar3.png',
    'lib/assets/avatar4.png',
    'lib/assets/avatar5.png',
    'lib/assets/avatar6.png',
    'lib/assets/avatar7.png',
    'lib/assets/avatar8.png',
    'lib/assets/avatar9.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Avatar')),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: avatars.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Handle avatar selection
            },
            child: Image.asset(avatars[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle upload own avatar
        },
        child: const Icon(Icons.upload),
      ),
    );
  }
}