import 'package:flutter/material.dart';

class IncidentHistoryPage extends StatelessWidget {
  const IncidentHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildIncidentCard(
          context,
          'assets/images/incidentes/incidente1.png',
          'El laboratorio 404 tiene una pared que se está deteriorando.',
          'Mantenimiento',
          '09/11/2024',
          'Pendiente',
        ),
        const SizedBox(height: 20),
        _buildIncidentCard(
          context,
          'assets/images/incidentes/incidente2.png',
          'La máquina de café está malograda.',
          'Mantenimiento',
          '08/11/2024',
          'Resuelto',
        ),
      ],
    );
  }

  Widget _buildIncidentCard(
    BuildContext context,
    String imagePath,
    String description,
    String type,
    String date,
    String status,
  ) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.broken_image,
                    size: 50,
                    color: Colors.grey,
                  );
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text('Tipo: $type'),
                  Text('Fecha: $date'),
                  const SizedBox(height: 10),
                  Text(
                    'Estado: $status',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: status == 'Pendiente' ? Colors.orange : Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
