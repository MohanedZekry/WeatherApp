import 'package:weatherapp/domain/entities/weather.dart';

abstract class WeatherRepository{

      Future<Weather> getWeatherByCityName(String cityName);

}