import 'package:flutter/material.dart';
import 'package:opmaint_assignment/core/theme/theme.dart';

import 'package:opmaint_assignment/screens/note_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationTheme.lightTheme,
      home: const NoteScreen(),
    );
  }
}
