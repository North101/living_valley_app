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
      themeMode: .system,
      theme: .new(
        brightness: .light,
        scaffoldBackgroundColor: const .fromRGBO(255, 255, 240, 1),
        primaryColor: const .fromRGBO(30, 65, 49, 1),
        colorScheme: const .light(
          surface: .fromRGBO(255, 255, 240, 1),
          onSurface: .fromRGBO(30, 65, 49, 1),
          primary: .fromRGBO(30, 65, 49, 1),
          onPrimary: .fromRGBO(255, 255, 240, 1),
        ),
        textTheme: const .new(
          bodyMedium: .new(color: .fromRGBO(30, 65, 49, 1)),
          bodyLarge: .new(color: .fromRGBO(30, 65, 49, 1)),
          titleLarge: .new(color: .fromRGBO(30, 65, 49, 1), fontWeight: FontWeight.bold),
        ),
      ),
      darkTheme: .new(
        brightness: .dark,
        scaffoldBackgroundColor: const .fromRGBO(30, 65, 49, 1),
        primaryColor: const .fromRGBO(250, 250, 226, 1),
        colorScheme: const .dark(
          surface: .fromRGBO(30, 65, 49, 1),
          onSurface: .fromRGBO(250, 250, 226, 1),
          primary: .fromRGBO(250, 250, 226, 1),
          onPrimary: .fromRGBO(30, 65, 49, 1),
        ),
        textTheme: const .new(
          bodyMedium: .new(color: .fromRGBO(250, 250, 226, 1)),
          bodyLarge: .new(color: .fromRGBO(250, 250, 226, 1)),
          titleLarge: .new(color: .fromRGBO(250, 250, 226, 1), fontWeight: FontWeight.bold),
        ),
      ),
      home: const ResourcePage(
        resourceId: '',
        title: null,
        anchor: null,
      ),
    );
  }
}
