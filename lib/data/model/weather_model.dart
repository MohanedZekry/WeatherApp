import 'package:weatherapp/domain/entities/weather.dart';

class WeatherModel extends Weather {

  WeatherModel({
    required super.id,
    required super.cityName,
    required super.main,
    required super.description,
    required super.pressure
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json){
    return WeatherModel(
        id: json['id'],
        cityName: json['cityName'],
        description: json['weather'][0]['description'],
        main: json['weather'][0]['main'],
        pressure: json['pressure']
    );
  }

}