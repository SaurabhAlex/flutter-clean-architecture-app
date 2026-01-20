import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_app/presentation/counter_screen.dart';
import 'package:flutter_clean_architecture_app/presentation/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'RiverPod State Management'),
      home: CounterScreen(),
    );
  }
}

