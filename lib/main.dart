import 'package:flutter/material.dart';
import 'package:manejo_videos/config/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppVideos',
      debugShowCheckedModeBanner: false,
      theme: appTheme().getTheme(),
      home: Scaffold(
        //encabezado
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hola mundo'),
        ),
        ),
    );
  }
}