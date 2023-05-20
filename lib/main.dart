import 'package:flutter/material.dart';
import 'package:yesnoapp/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'yes no app',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("material app bar"),
        ),
        body: Center(
          child: FilledButton.tonal(onPressed: (){}, child: const Text("click me")),
        ),
      ),
    );
  }
}
