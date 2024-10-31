import 'package:flutter/material.dart';
class Transferhistory extends StatefulWidget {
  const Transferhistory({super.key});

  @override
  State<Transferhistory> createState() => _TransferhistoryState();
}

class _TransferhistoryState extends State<Transferhistory> {

  void Transfered() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          ListTile(
            title: Text('Transfer 1'),
            subtitle: Text('Transfered 1000 to 1234567890'),
            trailing: Text('12:00'),
          ),
          ListTile(
            title: Text('Transfer 2'),
            subtitle: Text('Transfered 2000 to 1234567890'),
            trailing: Text('12:00'),
          ),
          ListTile(
            title: Text('Transfer 3'),
            subtitle: Text('Transfered 3000 to 1234567890'),
            trailing: Text('12:00'),
          ),
          ListTile(
            title: Text('Transfer 4'),
            subtitle: Text('Transfered 4000 to 1234567890'),
            trailing: Text('12:00'),
          ),
          ListTile(
            title: Text('Transfer 5'),
            subtitle: Text('Transfered 5000 to 1234567890'),
            trailing: Text('12:00'),
          ),
          ListTile(
            title: Text('Transfer 6'),
            subtitle: Text('Transfered 6000 to 1234567890'),
            trailing: Text('12:00'),
          ),
          ListTile(
            title: Text('Transfer 7'),
            subtitle: Text('Transfered 7000 to 1234567890'),
            trailing: Text('12:00'),
          ),
          ListTile(
            title: Text('Transfer 8'),
            subtitle: Text('Transfered 8000 to 1234567890'),
            trailing: Text('12:00'),
          ),
          ListTile(
            title: Text('Transfer 9'),
            subtitle: Text('Transfered 9000 to 1234567890'),
            trailing: Text('12:00'),
          ),
          ListTile(
            title: Text('Transfer 10'),
            subtitle: Text('Transfered 10000 to 1234567890'),
            trailing: Text('12:00'),
          ),
        ],
      ),
    );
  }
}
