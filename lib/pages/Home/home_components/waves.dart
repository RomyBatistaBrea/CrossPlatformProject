import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class WavesBackground extends StatelessWidget {
  const WavesBackground({super.key});

  @override
  Widget build(BuildContext context) {
    /* 
  - Romy Batista July 9, 2023

  Content is wrapped in a container that lays on top of the scaffold.
  Contains the WavesBackground widgets where 4 WavesBackground are used.
  Timing for the WavesBackground are set below.
  As well as wave colors based on the light_theme.dart and dark_theme.dart files 
  ***which again, adjust based on the system preferences(Dark / Light Mode)***.

  Gradients are set to flow from center left to center right, but can be changed.
  Height percentage flows from top to bottom, so the lower the percentage, 
  The more of the container the WavesBackground will take up.
  */

    return Container(
      decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
              colors: [Theme.of(context).colorScheme.outline, Theme.of(context).colorScheme.outlineVariant
            
          ])),
      child: WaveWidget(
        config: CustomConfig(
          gradients: [
            [
              Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).colorScheme.onSecondary
            ],
            [
              Theme.of(context).colorScheme.tertiary,
              Theme.of(context).colorScheme.onTertiary,
            ],
            [
              Theme.of(context).colorScheme.primaryContainer,
              Theme.of(context).colorScheme.onPrimaryContainer,
            ],
            [
              Theme.of(context).colorScheme.onTertiary,
              Theme.of(context).colorScheme.tertiary,
            ],
            [
              Theme.of(context).colorScheme.onSecondary,
              Theme.of(context).colorScheme.onPrimary,
            ],
            [
              Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).colorScheme.onSecondary
            ],
            [
              Theme.of(context).colorScheme.tertiary,
              Theme.of(context).colorScheme.onTertiary,
            ],
            [
              Theme.of(context).colorScheme.onPrimaryContainer,
              Theme.of(context).colorScheme.primaryContainer,
            ],
            [
              Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).colorScheme.onSecondary,
            ],
            
          ],
          gradientBegin: Alignment.centerLeft,
          gradientEnd: Alignment.centerRight,
          durations: [19000, 15467, 24256, 13434, 18462, 16452, 12435, 26236],
          heightPercentages: [0.4, 0.46, 0.54, 0.6, 0.67, 0.73, 0.8, 0.87],
          blur: const MaskFilter.blur(BlurStyle.normal, 3)
        ),
        size: const Size(double.infinity, double.infinity),
        waveAmplitude: 30,
      ),
    );
  }
}
