import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/view/resource_page/page.dart';
import '/constants.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 240, 1),
        primaryColor: const Color.fromRGBO(30, 65, 49, 1),
        colorScheme: const ColorScheme.light(
          surface: Color.fromRGBO(255, 255, 240, 1),
          onSurface: Color.fromRGBO(30, 65, 49, 1),
          primary: Color.fromRGBO(30, 65, 49, 1),
          onPrimary: Color.fromRGBO(255, 255, 240, 1),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color.fromRGBO(30, 65, 49, 1)),
          bodyLarge: TextStyle(color: Color.fromRGBO(30, 65, 49, 1)),
          titleLarge: TextStyle(color: Color.fromRGBO(30, 65, 49, 1), fontWeight: FontWeight.bold),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromRGBO(30, 65, 49, 1),
        primaryColor: const Color.fromRGBO(250, 250, 226, 1),
        colorScheme: const ColorScheme.dark(
          surface: Color.fromRGBO(30, 65, 49, 1),
          onSurface: Color.fromRGBO(250, 250, 226, 1),
          primary: Color.fromRGBO(250, 250, 226, 1),
          onPrimary: Color.fromRGBO(30, 65, 49, 1),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color.fromRGBO(250, 250, 226, 1)),
          bodyLarge: TextStyle(color: Color.fromRGBO(250, 250, 226, 1)),
          titleLarge: TextStyle(color: Color.fromRGBO(250, 250, 226, 1), fontWeight: FontWeight.bold),
        ),
      ),
      home: const ResourcePage(
        resourceId: null,
        title: null,
        anchor: null,
        lookup: null,
      ),
    );
  }
}
