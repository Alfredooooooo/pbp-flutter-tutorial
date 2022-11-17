import 'package:flutter/material.dart';
import 'package:flutter_lab/page/form_page.dart';
import 'package:flutter_lab/page/main.dart';
import 'package:flutter_lab/page/to_do_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('Counter'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Form'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('To Do'),
            onTap: () {
              // Route menu ke halaman to do
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ToDoPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
