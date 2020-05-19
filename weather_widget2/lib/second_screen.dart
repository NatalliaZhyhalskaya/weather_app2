import 'package:weather_widget2/data_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SecondScreenState();
  }
}

class SecondScreenState extends State<SecondScreen> {
  List<WeatherList> data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My weather app'),
      ),
      body: Container(
        color: Colors.grey[700],
        child: ListView(
          children: _buildList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          child: Icon(Icons.add),
          onPressed: () => _loadWeather()),
    );
  }

  _loadWeather() async {
    final response = await http.get(
        'https://samples.openweathermap.org/data/2.5/forecast?lat=35&lon=139&appid=439d4b804bc8187953eb36d2a8c26a02');
    

    if (response.statusCode == 200) {
      var allData = (json.decode(response.body) as Map)['list'];
      var weatherDataList = List<WeatherList>();
      allData.forEach((val) {
        var record = WeatherList(
          //cod: val['weather']['main'],
          cnt: val['dt'],
          //cod: val['weather']['description'],
          // name: val['name'],
          // symbol: val["symbol"],
        );
        weatherDataList.add(record);
      });
      print(weatherDataList);
    } else
      print('error!');
  }

  List<Widget> _buildList() {
    return data.map((WeatherList f) => ListTile()).toList();
  }
}
