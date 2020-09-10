import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

String name = '';
// String email = '';
String sub = '';
String body = '';

// ignore: non_constant_identifier_names
void send_email(String name, String subject, String body) async {
  final mailtoLink = Mailto(
    to: ['ben.arijit@gmail.com'],
    // cc: ['cc1@example.com', 'cc2@example.com'],
    subject: '$subject',
    body: '$body',
  );

  await launch('$mailtoLink');
}
