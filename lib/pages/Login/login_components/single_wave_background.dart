import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SingleWave extends StatelessWidget {
  const SingleWave({super.key});

  @override
  Widget build(BuildContext context) {
    /*
  - Romy Batista July 10, 2023

  This widget displays a single wave animation using the 'wave' package.
  It creates a container with a transparent color as the background,
  and inside it, a WaveWidget is rendered with a custom configuration.

  The wave animation gradient is defined using the 'onPrimary' and 'onSecondary'
  colors from the current theme.

  The wave animation spans the entire width and height of its parent container.
  The wave amplitude is set to 55, controlling the height of the wave peaks.

  Currently only used for login Screen
  */
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
