import 'package:dio/dio.dart';
import 'package:weatherapp/core/utils/constants.dart';
import 'package:weatherapp/data/data_sources/remote_data_source.dart';
import 'package:weatherapp/data/model/weather_model.dart';

class RemoteDateSourceImpl implements RemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String cityName) async{
    try{
      var response = await Dio().get('${Constants.baseURL}/weather?q=$cityName&appid=${Constants.appID}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e){
      print(e);
      return null;
    }
  }

}