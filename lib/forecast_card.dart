import 'package:flutter/material.dart';

class ForecastCard extends StatelessWidget {
  const ForecastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Weather Forecast',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _ForecastCard(icon: Icons.sunny ),
                _ForecastCard(value: 3.4),
                _ForecastCard(time: '10:00',),
                _ForecastCard(),
                _ForecastCard(),
                _ForecastCard(),
                _ForecastCard(),
                _ForecastCard(),
                _ForecastCard(),
                _ForecastCard(),
                _ForecastCard(),
                _ForecastCard(),
                _ForecastCard(),
                _ForecastCard(),
                _ForecastCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class _ForecastCard extends StatelessWidget {
  final String time;
  final IconData icon;
  final double value;
  const _ForecastCard({
    this.time = '9:00',
    this.icon = Icons.cloud,
    this.value = 312,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8,),
                Icon(icon, size: 32,),
                const SizedBox(height: 8,),
                Text(
                  value.toString(),
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}