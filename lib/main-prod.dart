import 'package:firebase_core/firebase_core.dart';
import 'package:flavors_configuration_practice/app_config.dart';
import 'package:flavors_configuration_practice/configured_app.dart';
import 'package:flavors_configuration_practice/main.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConfiguredApp(
        config: AppConfig.prod(),
        child: Builder(builder: (context) {
          bool isDebugMode = AppConfig.of(context).isDebugMode;
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: isDebugMode,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: MyHomePage(title: 'Flutter Demo Home Page'),
          );
        }));
  }
}
