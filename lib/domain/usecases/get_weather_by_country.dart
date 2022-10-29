import 'package:weatherapp/domain/entities/weather.dart';
import 'package:weatherapp/domain/repository/weather_repository.dart';

class GetWeatherByCountry{

  final WeatherRepository repository;
  GetWeatherByCountry({ required this.repository });

  Future<Weather> call(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }

}