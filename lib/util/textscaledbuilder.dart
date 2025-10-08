import 'package:flutter/material.dart';

class TextScaledBuilder extends StatelessWidget {
  const TextScaledBuilder({
    required this.builder,
    super.key,
  });

  final Widget Function(BuildContext context, double height) builder;

  @override
  Widget build(BuildContext context) {
    final fontSize = DefaultTextStyle.of(context).style.fontSize!;
    final textScaleFactor = MediaQuery.of(context).textScaler.scale(fontSize);
    return builder(context, textScaleFactor);
  }
}

class TextScaledSpan extends WidgetSpan {
  TextScaledSpan(Widget Function(BuildContext context, double height) builder)
    : super(
        child: TextScaledBuilder(builder: builder),
        alignment: PlaceholderAlignment.middle,
      );
}
