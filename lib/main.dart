import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:socialy/firebase_options.dart';
import 'package:socialy/views/responsive/mobile_layout.dart';
import 'package:socialy/views/responsive/responsive_layout.dart';
import 'package:socialy/views/responsive/web_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileLayout: MobileScreenLayout(),
        webLayout: WebScreenLayout(),
      ),
    );
  }
}
