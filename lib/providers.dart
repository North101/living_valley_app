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
Future<Iterable<ResourceLink>> readLookup(Ref ref) async {
  return await rootBundle.loadStructuredData(
    Assets.lookup,
    (data) async => (jsonDecode(data) as List).map((e) => ResourceLink.fromJson(e)),
  );
}
