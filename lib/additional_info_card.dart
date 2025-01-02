import 'package:flutter/material.dart';

class AdditionalInfoCard extends StatelessWidget {
  const AdditionalInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Additional Information',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _AdditionalInfoWidget(
                title: 'Humidity',
                value: 94,
                icon: Icons.water_drop_rounded
              ),
              _AdditionalInfoWidget(
                title: 'Wind Speed',
                value: 7.67,
                icon: Icons.air
              ),
              _AdditionalInfoWidget(
                title: 'Pressure',
                value: 1006,
                icon: Icons.thermostat
              ),
            ],
          )
        ],
      )
    );
  }
}

class _AdditionalInfoWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final double value;

  const _AdditionalInfoWidget({
    required this.title,
    required this.icon,
    required this.value
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Card(
        color: Theme.of(context).canvasColor,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 32),
              const SizedBox(height: 8,),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                )
              ),
              const SizedBox(height: 8,),
              Text(
                value.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              )
            ],
          ),
        ),
      )
    );
  }
}