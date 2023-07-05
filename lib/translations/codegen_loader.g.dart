// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "title": "Hello ,This is a language converter application",
  "content": "Have a good day with good smile"
};
static const Map<String,dynamic> hi = {
  "title": "नमस्ते, यह एक भाषा परिवर्तक एप्लिकेशन है",
  "content": "अच्छी मुस्कान के साथ आपका दिन शुभ हो"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "hi": hi};
}
