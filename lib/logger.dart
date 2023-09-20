import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';

void debugPrintMap(Map<String, dynamic>? map) {
  if (kDebugMode) {
    if (map == null) return print('null');
    log(const JsonEncoder.withIndent('  ').convert(map));
  }
}
