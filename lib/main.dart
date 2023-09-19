import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/config/theme/app_theme.dart';
import 'package:si_no_app/presentacion/provider/chat_provider.dart';
import 'package:si_no_app/presentacion/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    //se usa cuando trabajamos con muchas clases que seran llamadas en el main
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
      title: 'Si No App',
      debugShowCheckedModeBanner: false,
      //llama al AppTheme
      theme: AppTheme(
        selectedColor: 3).theme(),
      //* main widget de la app(ChatScreen)
      home: const ChatScreen(),
      ),
    );
  } 
}