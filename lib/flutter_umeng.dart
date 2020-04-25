import 'dart:async';

import 'package:flutter/services.dart';

class FlutterUmeng {
  static const MethodChannel _channel =
      const MethodChannel('flutter_umeng');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
