import 'package:flutter/material.dart';

Future<String> fetchWeather() async {
  return await Future.delayed(const Duration(seconds: 3), () => '33c');
}
