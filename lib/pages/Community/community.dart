import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Community')),
      body: DefaultTextStyle(
        // Use the null-aware operator (??) to provide a default style
        style: Theme.of(context).textTheme.bodyMedium ??
            const TextStyle(
              color: Colors.white,
            ),
        child: const Text('hi'))
    );
  }
}