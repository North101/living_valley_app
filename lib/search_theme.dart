import 'package:flutter/material.dart';

class SearchTheme {
  const SearchTheme(this.context);

  final BuildContext context;

  ThemeData get theme {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return theme.copyWith(
      appBarTheme: AppBarTheme(
        systemOverlayStyle: .dark,
        backgroundColor: colorScheme.brightness == Brightness.dark ? Colors.grey[900] : Colors.white,
        iconTheme: theme.primaryIconTheme.copyWith(color: Colors.grey),
        titleTextStyle: theme.textTheme.titleLarge?.copyWith(color: Colors.black),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: theme.inputDecorationTheme.hintStyle,
        border: .none,
      ),
    );
  }

  static ThemeData of(BuildContext context) => SearchTheme(context).theme;
}
