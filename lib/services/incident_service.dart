// services/incident_service.dart
import 'package:http/http.dart' as http;

class IncidentService {
  Future<void> reportIncident(Map<String, dynamic> incidentData) async {
    final response = await http.post(
      Uri.parse('https://api.example.com/incidents'),
      body: incidentData,
    );
    if (response.statusCode != 200) {
      throw Exception('Error al reportar incidente');
    }
  }
}
