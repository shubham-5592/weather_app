import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  Future getCurrentWeather() async {
    http.get(
      Uri.parse('')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32)
      ),
      child: ClipRRect( // to cut / clip the blur effect 
      // after a specific border
        borderRadius: BorderRadiusDirectional.circular(32),
        child: BackdropFilter( // to add blur effect
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(There was a warning to use Size box
                // As it also gives the same effect if you only
                // want to use the wiidth option 
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    '7 °C',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 16,),
                Icon(Icons.cloud, size: 60),
                SizedBox(height: 16,),
                Text(
                  'Rain',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}