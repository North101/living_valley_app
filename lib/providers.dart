import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/resources.dart';
import '/gen/assets.gen.dart';

part 'providers.g.dart';

@riverpod
Future<Resource> readResource(Ref ref, String resourceId) async {
  return await rootBundle.loadStructuredData(
    resourceId.isNotEmpty ? 'assets/data/$resourceId.json' : Assets.dataJson,
    (data) async => Resource.fromJson(jsonDecode(data)),
  );
}

@riverpod
Future<List<ResourceLinkSearch>> readLookup(Ref ref) async {
  return await rootBundle.loadStructuredData(
    Assets.lookup,
    (data) async => (jsonDecode(data) as List)
        .map((e) => ResourceLinkLookup.fromJson(e))
        .indexed
        .map(
          (e) => ResourceLinkSearch(
            index: e.$1,
            id: e.$2.id,
            title: e.$2.title,
            parents: e.$2.parents,
            parts: e.$2.id.substring(1).split('/'),
            normalizedTitle: e.$2.title.toLowerCase(),
          ),
        )
        .toList(),
  );
}
