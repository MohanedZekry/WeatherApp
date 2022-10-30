import 'package:flutter/material.dart';
import 'package:weatherapp/core/app_theme.dart';
import 'package:weatherapp/data/data_sources/remote_data_source.dart';
import 'package:weatherapp/data/data_sources/remote_data_source_impl.dart';
import 'package:weatherapp/data/repository/WeatherRepositoryImpl.dart';
import 'package:weatherapp/domain/repository/weather_repository.dart';
import 'package:weatherapp/domain/usecases/get_weather_by_country.dart';

void main() async {
  RemoteDataSource remoteDataSource = RemoteDateSourceImpl();
  WeatherRepository weatherRepository = WeatherRepositoryImpl(remoteDateSourceImpl: remoteDataSource);
  await GetWeatherByCountry(repository: weatherRepository).call('Egypt');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: appTheme,
      home: Scaffold(
        appBar: AppBar(title: const Text('Weather App'),),
        body: Column(),
      ),
    );
  }
}
