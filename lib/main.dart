import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/ControllersBindings.dart';
import 'package:test_project/screens/HomeScreen.dart';
import 'controllers/launcherController.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _launcherController = Get.put(LauncherController());
  String df = "https://github.com/MalachinskiyVJ/FlutterTestProject";

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter test project',
      initialBinding: ControllerBindings(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(
        onPressed: () => _launcherController.launch(df),
      ),
    );
  }
}
