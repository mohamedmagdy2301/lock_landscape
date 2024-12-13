import 'package:flutter/material.dart';
import 'package:lock_orientation_screen/lock_orientation_screen.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LockOrientation(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Lock Orientation Example'),
          ),
          body: const Center(
            child: Text('This screen is locked in portrait mode!'),
          ),
        ),
      ),
    );
  }
}
