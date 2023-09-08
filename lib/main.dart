import 'package:flutter/material.dart';
import 'package:madkour_task/core/get_it/get_it.dart';
import 'package:madkour_task/core/wrapper/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initGetIt();
  runApp(const MyApp());
}

/// This is the root widget of the application.
class MyApp extends StatelessWidget {
  /// const constructor for the application.
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Madkour Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Wrapper(),
    );
  }
}
