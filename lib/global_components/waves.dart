import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class WavesBackground extends StatelessWidget {
  const WavesBackground({super.key});

  @override
  Widget build(BuildContext context) {
  /*
  - Romy Batista July 9, 2023

  The WavesBackground widget creates a wave-like background effect with multiple layers.

  The widget is wrapped in a Container that applies a gradient background based on the current theme's color scheme.

  Inside the Container, a WaveWidget is used to generate the wave effect.
  The WaveWidget's configuration is defined by a CustomConfig, which determines the gradients, timing, and other properties of the waves.

  Gradients: Each wave layer has its own gradient defined by two colors from the current theme's color scheme.

  Timing: The durations list determines the duration of each wave animation in milliseconds.
  The heightPercentages list determines the vertical position of each wave layer within the Container.
  A lower percentage value means the wave layer occupies more space vertically.

  Other Properties: The blur property adds a blur effect to the waves using a MaskFilter.
  The size property sets the size of the WaveWidget to match the dimensions of its parent Container.
  The waveAmplitude property controls the intensity of the wave effect.
  */

    return Container(
      decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor),
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
            blur: const MaskFilter.blur(BlurStyle.normal, 3)),
        size: const Size(double.infinity, double.infinity),
        waveAmplitude: 30,
      ),
    );
  }
}
