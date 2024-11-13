import 'package:flutter/material.dart';
import 'pages/splash/splash_page.dart';
import 'pages/login/login_page.dart';
import 'components/navbar.dart';
import 'pages/reportar/report_incident_page.dart';
import 'pages/reportar/incident_history_page.dart';
import 'pages/notificaciones/notifications_page.dart';
import 'pages/perfil/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Incidentes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const Navbar(),
        '/reportIncident': (context) => const ReportIncidentPage(),
        '/incidentHistory': (context) => const IncidentHistoryPage(),
        '/notifications': (context) => const NotificationsPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
