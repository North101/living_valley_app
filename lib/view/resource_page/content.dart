import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

    Future.delayed(.zero).then((_) => ensureVisible(widget.anchor));
  }

  Future<void> ensureVisible(String? anchor) async {
    final anchorContext = AnchorKey.forId(key, anchor)?.currentContext;
    if (anchorContext == null) return;

    await Scrollable.ensureVisible(anchorContext);
  }

  Future<void> onLinkClick(String? url, Map<String, String> attributes, html.Element? element) async {
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
          resourceContentCopy,
        ],
        style: {
          'html': .new(
            margin: .zero,
            padding: .symmetric(horizontal: 8),
            fontSize: .large,
            color: const .fromRGBO(250, 250, 226, 1),
          ),
          'h1, h2': .new(
            margin: .only(bottom: 8),
          ),
          'p': .new(
            margin: .only(bottom: 8),
          ),
          'ul, ol': .new(
            padding: .only(left: 16),
          ),
          'highlight': .new(
            display: .block,
            padding: .all(8),
            fontWeight: .w700,
          ),
          'highlight[highlight="blue"][data-theme="dark"]': .new(
            backgroundColor: const .fromRGBO(82, 116, 154, 0.7),
            color: const .fromRGBO(250, 250, 226, 1),
          ),
          'highlight[highlight="blue"][data-theme="light"]': .new(
            backgroundColor: const .fromRGBO(209, 228, 255, 1),
            color: const .fromRGBO(250, 250, 226, 1),
          ),
          'highlight p, highlight ol, highlight ul': .new(
            margin: .only(bottom: 0),
          ),
          'choice, branch': .new(
            display: .block,
            padding: .all(8),
            margin: .symmetric(vertical: 8),
            textAlign: .center,
            fontWeight: .w700,
          ),
          'choice[data-theme="dark"]': .new(
            backgroundColor: const .fromRGBO(252, 166, 51, 1),
          ),
          'choice[data-theme="light"]': .new(
            backgroundColor: const .fromRGBO(255, 207, 143, 1),
          ),
          'branch[data-theme="dark"]': .new(
            backgroundColor: const .fromRGBO(82, 116, 154, 1),
          ),
          'branch[data-theme="light"]': .new(
            backgroundColor: const .fromRGBO(209, 228, 255, 1),
          ),
          'blockquote': .new(
            display: .block,
            margin: .only(bottom: 8),
            padding: .all(8),
            backgroundColor: const .fromRGBO(250, 250, 226, 0.15),
            border: .all(
              color: const .fromRGBO(255, 189, 100, 1),
            ),
          ),
          'blockquote[data-theme="dark"]': .new(
            color: const .fromRGBO(235, 237, 240, 1),
          ),
          'blockquote[data-theme="light"]': .new(
            color: const .fromRGBO(68, 73, 80, 1),
          ),
          'blockquote>:last-child': .new(
            margin: .only(bottom: 0),
          ),
          'code': .new(
            fontStyle: .italic,
            backgroundColor: const .fromRGBO(250, 250, 226, 0.2),
          ),
          'a': .new(
            color: DefaultTextStyle.of(context).style.color,
          ),
          '*[color], mission, event, entry, reward': .new(
            fontWeight: .w700,
          ),
          '*[color="red"][data-theme="dark"]': .new(
            color: const .fromRGBO(236, 139, 139, 1),
          ),
          '*[color="red"][data-theme="light"]': .new(
            color: const .fromRGBO(192, 11, 11, 1),
          ),
          '*[color="blue"][data-theme="dark"], event, entry': .new(
            color: const .fromRGBO(181, 204, 250, 1),
          ),
          '*[color="blue"][data-theme="light"], event, entry': .new(
            color: const .fromRGBO(98, 130, 193, 1),
          ),
          '*[color="green"]': .new(
            color: const .fromRGBO(3, 155, 40, 1),
          ),
          '*[color="gold"]': .new(
            color: const .fromRGBO(181, 158, 0, 1),
          ),
          'imgfooter': .new(
            display: .block,
            fontSize: .medium,
            fontWeight: .w700,
            fontStyle: .italic,
            textAlign: .center,
            margin: .only(bottom: 16),
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
    return context.currentStep == .preStyling;
  }

  @override
  void beforeStyle(ExtensionContext context) {
    context.node.attributes['data-theme'] = brightness.name;
  }
}

final resourceContentCustom = TagExtension(
  tagsToExtend: const {
    'highlight',
    'choice',
    'branch',
    'blockquote',
    'imgfooter',
  },
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
      padding: const .symmetric(vertical: 3.5),
      child: SizedBox(
        width: .infinity,
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
    final italic = context.style?.fontStyle == .italic;
    return TextScaledSpan(
      (context, height) {
        final image = iconImage.image(
          height: height * 1.2,
          color: textColor,
        );
        if (italic) {
          return Transform(
            alignment: .bottomCenter,
            transform: .skewX(-0.3),
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
    width: .infinity,
    child: child,
  ),
);

final resourceContentCopy = TagExtension.inline(
  tagsToExtend: const {
    'mission',
    'event',
    'entry',
    'reward',
  },
  builder: (context) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.baseline,
      baseline: TextBaseline.alphabetic,
      child: InkWell(
        onTap: () => Clipboard.setData(ClipboardData(text: context.innerHtml)),
        child: CssBoxWidget.withInlineSpanChildren(
          children: [
            TextSpan(children: context.inlineSpanChildren!),
          ],
          style: context.style!,
        ),
      ),
    );
  },
);
