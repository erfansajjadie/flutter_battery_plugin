
import 'package:flutter/services.dart';

import 'battery_plugin_platform_interface.dart';

class BatteryPlugin {
  static const MethodChannel _channel = MethodChannel("battery_plugin");


  Future<int> getBatteryPercentage() async {
    final int result = await _channel.invokeMethod("getBatteryPercentage");
    return result;
  }
}
