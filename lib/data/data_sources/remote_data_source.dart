import 'package:weatherapp/data/model/weather_model.dart';

abstract class RemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String cityName);
}