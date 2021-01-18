import 'package:flavors_configuration_practice/configured_app.dart';
import 'package:flutter/material.dart';

class AppConfig {
  final bool isDebugMode;

  AppConfig._(this.isDebugMode);

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ConfiguredApp>().config;
  }

  factory AppConfig.dev() {
    return AppConfig._(true);
  }

  factory AppConfig.prod() {
    return AppConfig._(false);
  }
}
