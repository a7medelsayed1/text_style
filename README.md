# 🎨 text_style

A simple and expressive way to manage and reuse `TextStyle`s in your Flutter apps.

With `text_style`, you can define a consistent typography system using shorthand syntax like:

```dart
Text('Hello', style: T.s16w700.white);
✨ Features
Shorthand TextStyle syntax (e.g. T.s14w400.primary)

Built-in extension methods for commonly used colors

Support for dynamic primary color

Light/Dark mode compatibility

Optional code generation from a JSON config file

Flexible and clean structure for typography management

Works out of the box – no setup required!

🚀 Getting Started
1. Install the package
Add to your pubspec.yaml:

yaml
Copy
Edit
dependencies:
  text_style: ^0.0.1
Then run:

bash
Copy
Edit
flutter pub get
2. Usage
dart
Copy
Edit
import 'package:text_style/text_style.dart';

Text(
  'Welcome!',
  style: T.s20w700.primary,
);
You can also use extensions for color:

dart
Copy
Edit
Text(
  'White Text',
  style: T.s16w400.white,
);
Set the primary color globally:

dart
Copy
Edit
TextStyleConfig.primaryColor = Colors.deepPurple;
🧰 JSON Config (optional)
You can auto-generate styles from a config file:

Create a config file text_styles.json:

json
Copy
Edit
{
  "styles": [
    {"size": 14, "weight": 400},
    {"size": 16, "weight": 700}
  ]
}
Run the generator:

bash
Copy
Edit
dart tool/generate_styles.dart
This will generate styles.dart with all combinations.

💡 Best Practices
Use T.s14w400.primary to maintain consistency across your app.

Use extensions like .white, .black, .primary to simplify styling.

Inject your theme's primary color once at the app level.

Add more color or weight options by editing the config and re-running the generator.

🧪 Example
Check the example/ folder for a full working demo.

📄 License
This package is released under the MIT License.
See LICENSE for details.

❤️ Contributions
Contributions, issues, and feature requests are welcome!
Feel free to open a pull request or an issue.

📫 Contact
For any questions or ideas, feel free to reach out!

yaml
Copy
Edit

---

لو حابب أضيف سكريبت Markdown يولّد دا تلقائي وقت النشر أو عايز أخصصه باسم الباكدج بتاعتك الحقيقي (لو غيرت الاسم من `text_style`) قولي، وأنا أعملهولك في ثانية.







