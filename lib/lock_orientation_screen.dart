import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A widget that locks the screen orientation to portrait mode.
///
/// The `LockOrientation` widget ensures the application remains in portrait
/// orientation when it is active. Once disposed, it restores the default
/// orientation settings.
class LockOrientation extends StatefulWidget {
  /// The widget displayed inside the locked orientation.
  final Widget child;

  /// Creates a `LockOrientation` widget.
  ///
  /// The [child] parameter is required and represents the widget that will
  /// be displayed within the locked orientation.
  const LockOrientation({required this.child, Key? key}) : super(key: key);

  @override
  State<LockOrientation> createState() => _LockOrientationState();
}

class _LockOrientationState extends State<LockOrientation> {
  @override
  void initState() {
    super.initState();
    // Lock screen orientation to portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    // Restore default orientation settings
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
