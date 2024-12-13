# Lock Orientation

**Lock Orientation Screen** is a Flutter package designed to help developers easily lock the screen orientation to portrait mode within their applications. This package simplifies the process by managing the system's orientation settings seamlessly.

---

## Features

- Locks the screen orientation to portrait mode.
- Restores the default system orientations when disposed.
- Easy to integrate and use.

---

## Installation

Add the following line to your project's `pubspec.yaml` under `dependencies`:

```yaml
dependencies:
  lock_orientation_screen: ^0.0.4
```

Then, run:

```bash
flutter pub get
```

---

## Usage

Wrap your app or specific widgets with `LockOrientation` to lock the orientation to portrait mode.

### Example:

```dart
import 'package:lock_orientation/lock_orientation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LockOrientation(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('Lock Orientation Example')),
          body: const Center(
            child: Text('Portrait Mode Only'),
          ),
        ),
      ),
    );
  }
}
```

---

## API

### `LockOrientation`

#### Constructor
```dart
const LockOrientation({required Widget child, Key? key})
```
- **`child`**: The widget to display within the locked orientation.
- **`key`**: An optional key for the widget.

#### Behavior
- Locks the orientation to portrait when initialized.
- Restores default orientations when disposed.

---

## How It Works

`LockOrientation` uses Flutter's `SystemChrome.setPreferredOrientations` to control screen orientation:
- **On initialization:** Sets orientation to `portraitUp` and `portraitDown`.
- **On disposal:** Restores all orientations (`portraitUp`, `portraitDown`, `landscapeLeft`, `landscapeRight`).

---
## Contributing

Contributions are highly encouraged! If you would like to contribute to `LockOrientation`, please follow these steps:

1. **Fork the Repository**.
2. **Create a New Branch**:
   ```bash
   git checkout -b feature/YourFeature
   ```
3. **Commit Your Changes**:
   ```bash
   git commit -m "Add your message"
   ```
4. **Push to the Branch**:
   ```bash
   git push origin feature/YourFeature
   ```
5. **Open a Pull Request**.

## Congratulations


Contributions are welcome! If you find a bug or have a feature request, please open an issue or submit a pull request in the [GitHub repository](https://github.com/mohamedmagdy2301/lock_orientation_screen)

If you found this guide helpful, don’t forget to ⭐ star this repository on GitHub to show your support!

Thank you for reading!


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or inquiries, feel free to reach out:

- **GitHub:** [mohamedmagdy2301](https://github.com/mohamedmagdy2301)
- **Email:** [mohammedmego15@gmail.com](mohammedmego15@gmail.com)



---

Thank you for using **Lock Orientation**!

