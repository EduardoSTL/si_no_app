import 'package:flutter/material.dart';
import 'package:si_no_app/config/theme/app_theme.dart';
import 'package:si_no_app/presentacion/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Si No App',
      debugShowCheckedModeBanner: false,
      //llama al AppTheme
      theme: AppTheme(
        selectedColor: 3).theme(),
      //* main widget de la app(ChatScreen)
      home: const ChatScreen(),
      /* home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')
        ),
        body: Center(
          child: FilledButton.tonal(onPressed: (){},
           child: const Text('Click')
           )
           ),
        ), */
    );
  } 
}