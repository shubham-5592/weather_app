
import 'package:flutter/material.dart';
import './main_card.dart';
import './forecast_card.dart';
import './additional_info_card.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            ),
        ),
        centerTitle: true,
        actions: [
          // InkWell( GIVES A SPLASH EFFECT TO ICONS. 
          // HAS LESSER OPTIONS COMPARED TO GESTURE 
          // DETECTOR
          //   child: Icon(Icons.refresh),
          //   onTap: () {print('refresh');},
          // ),
          // GestureDetector( DOESN'T GIVE ANY ANIMATION
          // HAS MORE OPTION TO CUSTOMIZE THAN INKWELL
          //   child: Icon(Icons.refresh),
          //   onTap: () {print('refresh');},
          // ),
          IconButton(
            onPressed: () {print('ICON BUTTON REFRESHED');},
            icon: Icon(Icons.refresh_sharp),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // main card
            MainCard(),
            const SizedBox(height: 20,), // works as padding
            // wheather prediction 
            ForecastCard(),
            const SizedBox(height: 20,), // works as padding
            // Extra info card
            AdditionalInfoCard()
          ],
        ),
      ),
    );
  }
}