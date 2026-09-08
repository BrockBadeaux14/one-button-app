import 'package:flutter/material.dart';

void main() {
  runApp(const OneButtonApp());
}

class OneButtonApp extends StatelessWidget {
  const OneButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Button App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: Center(
          child: FilledButton(onPressed: () {}, child: const Text('Press me')),
        ),
      ),
    );
  }
}
