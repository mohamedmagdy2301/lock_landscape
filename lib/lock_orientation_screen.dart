import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A widget to lock the screen orientation to portrait mode.
/// When disposed, it restores the system's default orientations.
class LockOrientationScreen extends StatefulWidget {
  const LockOrientationScreen({required this.child, super.key});

  /// The child widget to display within the locked orientation.
  final Widget child;

  @override
  State<LockOrientationScreen> createState() => _LockOrientationScreenState();
}

class _LockOrientationScreenState extends State<LockOrientationScreen> {
  @override
  void initState() {
    super.initState();
    // Lock the screen orientation to portrait.
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
  }

  @override
  void dispose() {
    // Restore default orientations.
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
