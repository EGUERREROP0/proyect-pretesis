import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function(int)? onSelectPage;

  const AppDrawer({super.key, this.onSelectPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              'Jhesin Aldana',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('jhersin.aldana@tecsup.edu.pe'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(
                'J',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pop(context);
              if (onSelectPage != null) onSelectPage!(0);
            },
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Historial'),
            onTap: () {
              Navigator.pop(context);
              if (onSelectPage != null) onSelectPage!(1);
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notificaciones'),
            onTap: () {
              Navigator.pop(context);
              if (onSelectPage != null) onSelectPage!(2);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pop(context);
              if (onSelectPage != null) onSelectPage!(3);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Cerrar sesión'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
