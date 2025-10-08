import 'package:flutter/material.dart';

class ThemedBuilder<T> extends StatelessWidget {
  final T light;
  final T dark;
  final Widget Function(BuildContext context, T color) builder;

  const ThemedBuilder({
    required this.light,
    required this.dark,
    required this.builder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return switch (brightness) {
      Brightness.dark => builder(context, dark),
      Brightness.light => builder(context, light),
    };
  }
}
