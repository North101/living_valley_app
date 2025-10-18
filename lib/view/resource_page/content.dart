import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as html;
import 'package:url_launcher/url_launcher.dart';

import '/gen/assets.gen.dart';
import '/resources.dart';
import '/view/util/textscaledbuilder.dart';
import 'page.dart';

class ResourceContentWidget extends StatefulWidget {
  const ResourceContentWidget({
    required this.resource,
    required this.anchor,
    super.key,
  });

  final Resource resource;
  final String? anchor;

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
          DataThemeHtmlExtension(brightness),
          resourceContentCustom,
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
          'ul, ol': Style(
            padding: HtmlPaddings.only(left: 16),
          ),
          'highlight': Style(
            display: Display.block,
            padding: HtmlPaddings.all(8),
            fontWeight: FontWeight.w700,
          ),
          'highlight[highlight="blue"][data-theme="dark"]': Style(
            backgroundColor: const Color.fromRGBO(82, 116, 154, 1),
          ),
          'highlight[highlight="blue"][data-theme="light"]': Style(
            backgroundColor: const Color.fromRGBO(209, 228, 255, 1),
          ),
          'highlight p, highlight ol, highlight ul': Style(
            margin: Margins.only(bottom: 0),
          ),
          'choice, branch': Style(
            display: Display.block,
            padding: HtmlPaddings.all(8),
            margin: Margins.symmetric(vertical: 8),
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w700,
          ),
          'choice[data-theme="dark"]': Style(
            backgroundColor: const Color.fromRGBO(252, 166, 51, 1),
          ),
          'choice[data-theme="light"]': Style(
            backgroundColor: const Color.fromRGBO(255, 207, 143, 1),
          ),
          'branch[data-theme="dark"]': Style(
            backgroundColor: const Color.fromRGBO(82, 116, 154, 1),
          ),
          'branch[data-theme="light"]': Style(
            backgroundColor: const Color.fromRGBO(209, 228, 255, 1),
          ),
          'blockquote': Style(
            display: Display.block,
            margin: Margins.only(bottom: 8),
            padding: HtmlPaddings.all(8),
            backgroundColor: const Color.fromRGBO(250, 250, 226, 0.15),
            border: Border.all(
              color: const Color.fromRGBO(255, 189, 100, 1),
            ),
          ),
          'blockquote[data-theme="dark"]': Style(
            color: const Color.fromRGBO(235, 237, 240, 1),
          ),
          'blockquote[data-theme="light"]': Style(
            color: const Color.fromRGBO(68, 73, 80, 1),
          ),
          'blockquote>:last-child': Style(
            margin: Margins.only(bottom: 0),
          ),
          'code': Style(
            fontStyle: FontStyle.italic,
            backgroundColor: const Color.fromRGBO(250, 250, 226, 0.2),
          ),
          'a': Style(
            color: DefaultTextStyle.of(context).style.color,
          ),
          '*[color]': Style(
            fontWeight: FontWeight.w700,
          ),
          '*[color="red"][data-theme="dark"]': Style(
            color: const Color.fromRGBO(236, 139, 139, 1),
          ),
          '*[color="red"][data-theme="light"]': Style(
            color: const Color.fromRGBO(192, 11, 11, 1),
          ),
          '*[color="blue"][data-theme="dark"]': Style(
            color: const Color.fromRGBO(181, 204, 250, 1),
          ),
          '*[color="blue"][data-theme="light"]': Style(
            color: const Color.fromRGBO(98, 130, 193, 1),
          ),
          '*[color="green"]': Style(
            color: const Color.fromRGBO(3, 155, 40, 1),
          ),
          '*[color="gold"]': Style(
            color: const Color.fromRGBO(181, 158, 0, 1),
          ),
        },
        onLinkTap: onLinkClick,
        onAnchorTap: onLinkClick,
      ),
    );
  }
}

class DataThemeHtmlExtension extends HtmlExtension {
  const DataThemeHtmlExtension(this.brightness);

  final Brightness brightness;

  @override
  final Set<String> supportedTags = const {};

  @override
  bool matches(ExtensionContext context) {
    return context.currentStep == CurrentStep.preStyling;
  }

  @override
  void beforeStyle(ExtensionContext context) {
    context.node.attributes['data-theme'] = brightness.name;
  }
}

final resourceContentCustom = TagExtension(
  tagsToExtend: const {'highlight', 'choice', 'branch', 'blockquote'},
  builder: (context) => CssBoxWidget.withInlineSpanChildren(
    children: context.inlineSpanChildren!,
    style: context.style!,
  ),
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
          child: Text(context.element?.text ?? ''),
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
    final italic = context.style?.fontStyle == FontStyle.italic;
    return TextScaledSpan(
      (context, height) {
        final image = iconImage.image(
          height: height * 1.2,
          color: textColor,
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
