import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as html;
import 'package:url_launcher/url_launcher.dart';

import '/gen/assets.gen.dart';
import '/resources.dart';
import '/util/textscaledbuilder.dart';
import '/util/themedbuilder.dart';
import 'page.dart';

class ResourceContentWidget extends StatefulWidget {
  const ResourceContentWidget({
    required this.resource,
    required this.anchor,
    required this.content,
    super.key,
  });

  final Resource resource;
  final String? anchor;
  final String content;

  @override
  State<ResourceContentWidget> createState() => _ResourceContentWidgetState();
}

class _ResourceContentWidgetState extends State<ResourceContentWidget> {
  final key = GlobalKey();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero).then((_) => ensureVisible(widget.anchor));
  }

  Future<void> ensureVisible(String? anchor) async {
    final anchorContext = AnchorKey.forId(key, anchor)?.currentContext;
    if (anchorContext == null) return;

    await Scrollable.ensureVisible(anchorContext);
  }

  void onLinkClick(String? url, Map<String, String> attributes, html.Element? element) async {
    if (url == null) return;

    final uri = Uri.parse(url);
    if (uri.scheme.isNotEmpty) {
      await launchUrl(uri);
    } else if ((uri.path.isEmpty || uri.path == widget.resource.id) && uri.fragment.isNotEmpty) {
      await ensureVisible(uri.fragment);
    } else {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResourcePage(
            resourceId: uri.path,
            title: element?.text,
            anchor: uri.fragment,
            lookup: widget.resource.lookup,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return SingleChildScrollView(
      child: Html(
        anchorKey: key,
        data: widget.resource.content,
        extensions: [
          resourceContentChoice,
          resourceContentBranch,
          resourceContentBlockquote,
          resourceContentHorizonalRule,
          resourceContentButton,
          resourceContentIcon,
          resourceContentImg,
        ],
        style: {
          'html': Style(
            margin: Margins.zero,
            padding: HtmlPaddings.symmetric(horizontal: 8),
            fontSize: FontSize.large,
          ),
          'h1, h2': Style(
            margin: Margins.only(bottom: 8),
          ),
          'p': Style(
            margin: Margins.only(bottom: 8),
          ),
          'p.highlight, div.highlight': Style(
            padding: HtmlPaddings.all(8),
            fontWeight: FontWeight.w700,
          ),
          'ul, ol': Style(
            padding: HtmlPaddings.only(left: 16),
          ),
          'choice, branch': Style(
            padding: HtmlPaddings.symmetric(horizontal: 8),
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w700,
            fontSize: FontSize.larger,
          ),
          'code': Style(
            fontStyle: FontStyle.italic,
            backgroundColor: const Color.fromRGBO(250, 250, 226, 0.2),
          ),
          'a': Style(
            color: DefaultTextStyle.of(context).style.color,
          ),
          'blockquote>:last-child': Style(
            margin: Margins.only(bottom: 0),
          ),
          '.highlight, .highlight p, .highlight div, .highlight ol, .highlight ul': Style(
            margin: Margins.only(bottom: 0),
          ),
          '.text': Style(
            fontWeight: FontWeight.w700,
          ),
          'button': Style.fromTextStyle(
            Theme.of(context).textTheme.labelLarge!.copyWith(
              color: switch (brightness) {
                Brightness.dark => const Color.fromRGBO(30, 65, 49, 1),
                Brightness.light => const Color.fromRGBO(250, 250, 226, 1),
              },
            ),
          ),
          'img': Style(
            display: Display.block,
          ),
          for (final color in ResourceHighlightColor.values)
            '.${color.className}': Style(
              backgroundColor: color.color(brightness),
            ),
          for (final color in ResourceTextColor.values)
            '.${color.className}': Style(
              color: color.color(brightness),
            ),
        },
        onLinkTap: onLinkClick,
        onAnchorTap: onLinkClick,
      ),
    );
  }
}

final resourceContentChoice = TagExtension(
  tagsToExtend: const {'choice'},
  builder: (context) {
    return ThemedBuilder(
      light: const Color.fromRGBO(255, 207, 143, 1),
      dark: const Color.fromRGBO(252, 166, 51, 1),
      builder: (_, color) => Container(
        width: double.infinity,
        margin: const EdgeInsetsGeometry.symmetric(vertical: 8),
        padding: const EdgeInsetsGeometry.symmetric(vertical: 8),
        color: color,
        child: Center(
          child: CssBoxWidget.withInlineSpanChildren(
            children: context.inlineSpanChildren!,
            style: context.style!,
          ),
        ),
      ),
    );
  },
);

final resourceContentBranch = TagExtension(
  tagsToExtend: const {'branch'},
  builder: (context) {
    return ThemedBuilder(
      light: const Color.fromRGBO(82, 116, 154, 1),
      dark: const Color.fromRGBO(209, 228, 255, 1),
      builder: (_, color) => Container(
        width: double.infinity,
        margin: const EdgeInsetsGeometry.symmetric(vertical: 8),
        padding: const EdgeInsetsGeometry.symmetric(vertical: 8),
        color: color,
        child: Center(
          child: CssBoxWidget.withInlineSpanChildren(
            children: context.inlineSpanChildren!,
            style: context.style!,
          ),
        ),
      ),
    );
  },
);

final resourceContentBlockquote = TagExtension(
  tagsToExtend: const {'blockquote'},
  builder: (context) {
    return ThemedBuilder(
      light: (
        background: const Color.fromRGBO(250, 250, 226, 0.15),
        text: const Color.fromRGBO(68, 73, 80, 1),
      ),
      dark: (
        background: const Color.fromRGBO(250, 250, 226, 0.15),
        text: const Color.fromRGBO(235, 237, 240, 1),
      ),
      builder: (c, color) => Theme(
        data: Theme.of(c).copyWith(
          textTheme: TextTheme(
            bodyMedium: TextStyle(color: color.text),
            bodyLarge: TextStyle(color: color.text),
            titleLarge: TextStyle(color: color.text, fontWeight: FontWeight.bold),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          decoration: BoxDecoration(
            color: color.background,
            border: Border.all(color: Colors.amber),
          ),
          child: CssBoxWidget.withInlineSpanChildren(
            children: context.inlineSpanChildren!,
            style: context.style!,
          ),
        ),
      ),
    );
  },
);

final resourceContentHorizonalRule = TagExtension(
  tagsToExtend: const {'hr'},
  builder: (context) => const Divider(),
);

final resourceContentButton = TagExtension(
  tagsToExtend: const {'button'},
  builder: (context) {
    final url = context.attributes['href'];
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(vertical: 3.5),
      child: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: () => context.parser.onLinkTap?.call(
            url,
            context.attributes,
            context.element,
          ),
          child: CssBoxWidget.withInlineSpanChildren(
            children: context.inlineSpanChildren!,
            style: context.style!,
          ),
        ),
      ),
    );
  },
);

final resourceContentIcon = TagExtension.inline(
  tagsToExtend: const {'icon'},
  builder: (context) {
    final icon = context.attributes['icon'];
    final iconPath = 'assets/icons/$icon.png';
    final iconImage = Assets.icons.values.firstWhereOrNull((e) => e.path == iconPath);
    if (iconImage == null) {
      return const TextSpan(text: '');
    }

    final textColor = context.style?.color;
    final iconColor = ResourceTextColor.values.firstWhereOrNull((e) => context.classes.contains(e.className));
    final italic = context.style?.fontStyle == FontStyle.italic;
    return TextScaledSpan(
      (context, height) {
        final brightness = Theme.of(context).brightness;
        final image = iconImage.image(
          height: height * 1.2,
          color: iconColor?.color(brightness) ?? textColor,
        );
        if (italic) {
          return Transform(
            alignment: Alignment.bottomCenter,
            transform: Matrix4.skewX(-0.3),
            child: image,
          );
        }
        return image;
      },
    );
  },
);

final resourceContentImg = TagWrapExtension(
  tagsToWrap: const {'img'},
  builder: (child) => SizedBox(
    width: double.infinity,
    child: child,
  ),
);
