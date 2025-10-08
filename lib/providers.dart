import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/resources.dart';
import '/gen/assets.gen.dart';

part 'providers.g.dart';

@riverpod
Future<Resource> readResource(Ref ref, String? resourceId, ResourceLookupGroup? lookup) async {
  final a = await rootBundle.loadStructuredData(
    resourceId != null ? 'assets/data/$resourceId.json' : Assets.dataJson,
    (data) async {
      final resource = Resource.fromJson(jsonDecode(data));
      return resource.lookup != null ? resource : resource.copyWith(lookup: lookup);
    },
  );
  return a;
}
