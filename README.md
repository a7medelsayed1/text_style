# 🎨 text_style

A simple and expressive way to manage and reuse `TextStyle`s in your Flutter apps.

With `text_style`, you can define a consistent typography system using shorthand syntax like:

```dart
Text('Hello', style: T.s16w700.white);
```

---

## ✨ Features

- Shorthand TextStyle syntax (e.g. `T.s14w400.primary`)
- Built-in extension methods for commonly used colors
- Support for dynamic primary color
- Flexible and clean structure for typography management
- Works out of the box – no setup required!

---

## 🚀 Getting Started

### 1. Install the package

Add to your `pubspec.yaml`:

```yaml
dependencies:
  text_style: ^0.0.1
```

Then run:

```bash
flutter pub get
```

---

### 2. Usage

```dart
import 'package:text_style/text_style.dart';

Text(
  'Welcome!',
  style: T.s20w700.primary,
);
```

You can also use extensions for color:

```dart
Text(
  'White Text',
  style: T.s16w400.white,
);
```

Set the primary color globally:

```dart
TextStyleConfig.primaryColor = Colors.deepPurple;
```

---


## 💡 Best Practices

- Use `T.s14w400.primary` to maintain consistency across your app.
- Use extensions like `.white`, `.black`, `.primary` to simplify styling.
- Inject your theme's primary color once at the app level.
- Add more color or weight options by editing the config and re-running the generator.

---

## 🧪 Example

Check the [`example/text_style_example.dart`](example) folder for a full working demo.

---

## 📄 License

This package is released under the MIT License.  
See [LICENSE](LICENSE) for details.

---

## ❤️ Contributions

Contributions, issues, and feature requests are welcome!  
Feel free to open a pull request or an issue.

---

## 📫 Contact

For any questions or ideas, feel free to reach out!