import 'package:flutter/material.dart';
import 'package:widget_of_the_week/page_view.dart';

import 'animatedContainer.dart';
import 'call_back_shortcuts.dart';
import 'expansion_panel.dart';
import 'fade_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        home:FadeTransitionExampleApp()

    );
  }
}

