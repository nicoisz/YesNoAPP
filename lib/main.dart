import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesnoapp/config/theme/app_theme.dart';
import 'package:yesnoapp/presentation/providers/chat_provider.dart';
import 'package:yesnoapp/presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [ChangeNotifierProvider(create: (_)=> ChatProvider())],
      child: MaterialApp(
        title: 'yes no app',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}
