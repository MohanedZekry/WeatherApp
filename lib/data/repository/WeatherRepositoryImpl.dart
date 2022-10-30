import 'package:weatherapp/data/data_sources/remote_data_source_impl.dart';
import 'package:weatherapp/domain/entities/weather.dart';
import 'package:weatherapp/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {

  final RemoteDateSourceImpl remoteDateSourceImpl;

  WeatherRepositoryImpl({required this.remoteDateSourceImpl});

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
      return (await remoteDateSourceImpl.getWeatherByCountryName(cityName))!;
  }

}