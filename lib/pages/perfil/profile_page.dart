import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Perfil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.red,
                  child: Text(
                    'J',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: Icon(
                      Icons.edit,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Jhesin Aldana',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'jhersin.aldana@tecsup.edu.pe',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            const Divider(color: Colors.grey),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text(
                'Nombre: Jhesin',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.person_outline, color: Colors.black),
              title: Text(
                'Apellido: Aldana',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.email, color: Colors.black),
              title: Text(
                'Correo: jhersin.aldana@tecsup.edu.pe',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.phone, color: Colors.black),
              title: Text(
                'Número: 991709606',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
