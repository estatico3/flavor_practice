import 'package:flavors_configuration_practice/app_config.dart';
import 'package:flutter/material.dart';

class ConfiguredApp extends InheritedWidget {
  final AppConfig config;
  final Widget child;

  ConfiguredApp({this.config, this.child});

  @override
  bool updateShouldNotify(covariant ConfiguredApp oldWidget) {
    return false;
  }
}
