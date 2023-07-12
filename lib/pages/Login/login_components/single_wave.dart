import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SingleWave extends StatelessWidget {
  const SingleWave({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.transparent),
      child: WaveWidget(
        config: CustomConfig(
          gradients: [
            [
              Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).colorScheme.onSecondary
            ],
          ],
          gradientBegin: Alignment.centerLeft,
          gradientEnd: Alignment.centerRight,
          durations: [19000],
          heightPercentages: [0.62],
        ),
        size: const Size(double.infinity, double.infinity),
        waveAmplitude: 55,
      ),
    );
  }
}
