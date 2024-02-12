import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Map<String, dynamic> weatherData = {
    "New York": {
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    "Los Angeles": {
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    "London": {
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    "Tokyo": {
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    "Sydney": {
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    }
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Info App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather Info App'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: weatherData.length,
          itemBuilder: (context, index) {
            final city = weatherData.keys.toList()[index];
            final weather = weatherData[city];
            return Card(
              child: ListTile(
                title: Text("City: $city"),
                subtitle: Text(
                    'Temperature: ${weather['temperature']}°C\nCondition: ${weather['condition']}\nHumidity: ${weather['humidity']}%\nWind Speed: ${weather['windSpeed']} m/s'),
              ),
            );
          },
        ),
      ),
    );
  }
}
