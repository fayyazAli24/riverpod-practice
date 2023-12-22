import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dummyWeatherReport.dart';

final futureProvider = FutureProvider<String>((ref) => fetchWeather());

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: ref.watch(futureProvider).when(data: (data) {
      return Center(
        child: Text(data),
      );
    }, error: (error, stackTrace) {
      return Center(
        child: Text(error.toString()),
      );
    }, loading: () {
      return const Center(child: CircularProgressIndicator());
    })

    );
  }
}
