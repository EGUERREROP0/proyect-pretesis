import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'report_incident_page2.dart'; 
import '../../components/custom_button.dart'; 

class ReportIncidentPage extends StatefulWidget {
  const ReportIncidentPage({super.key});

  @override
  _ReportIncidentPageState createState() => _ReportIncidentPageState();
}

class _ReportIncidentPageState extends State<ReportIncidentPage> {
  File? _selectedImage;

  // Método para abrir el selector de imágenes
  Future<void> _showImageSourceDialog() async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Seleccione'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Galería'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Cámara'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera);
              },
            ),
          ],
        ),
      ),
    );
  }

  // Método para seleccionar una imagen de la galería o cámara
  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reporta un Incidente'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'REPORTA UN INCIDENTE',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontFamily: 'Roboto-Regular',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Insertar imagen',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto-Regular',
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: _showImageSourceDialog,
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: _selectedImage != null
                    ? Image.file(
                        _selectedImage!,
                        fit: BoxFit.cover,
                      )
                    : const Icon(
                        Icons.image,
                        size: 50,
                        color: Colors.grey,
                      ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Tipo',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto-Regular',
              ),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Selecciona el tipo',
              ),
              items: const [
                DropdownMenuItem(
                  value: 'Red',
                  child: Text('Red', style: TextStyle(fontFamily: 'Sanseriffic')),
                ),
                DropdownMenuItem(
                  value: 'Mantenimiento',
                  child: Text('Mantenimiento', style: TextStyle(fontFamily: 'Sanseriffic')),
                ),
                DropdownMenuItem(
                  value: 'Seguridad',
                  child: Text('Seguridad', style: TextStyle(fontFamily: 'Sanseriffic')),
                ),
                DropdownMenuItem(
                  value: 'Medio ambiente',
                  child: Text('Medio ambiente', style: TextStyle(fontFamily: 'Sanseriffic')),
                ),
                DropdownMenuItem(
                  value: 'Otros',
                  child: Text('Otros', style: TextStyle(fontFamily: 'Sanseriffic')),
                ),
              ],
              onChanged: (value) {
                print('Tipo de incidente seleccionado: $value');
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Detalle de incidente (opcional)',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto-Regular',
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: 'Redacta aquí el detalle del incidente...',
                border: OutlineInputBorder(),
              ),
              style: const TextStyle(fontFamily: 'Sanseriffic'),
            ),
            const SizedBox(height: 20),
            Center(
              child: CustomButton(
                text: 'Reportar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReportIncidentPage2(
                        image: _selectedImage,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
