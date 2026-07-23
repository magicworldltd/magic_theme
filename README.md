# magic_theme

A lightweight, reusable style-bundle for Flutter. Define a `MagicTheme` once
and apply its pieces — text styles, colors, spacing, icon styling, button
styles, and border radius — wherever you need them, instead of repeating the
same style values across your widget tree.

## Features

- Single object holding common style properties: `textStyle`, `padding`,
  `margin`, `iconTheme`, `buttonStyle`, `borderRadius`, `backgroundColor`.
- All fields are optional — only define what you need.
- Immutable and `const`-constructible.
- `copyWith()` for deriving variants of an existing theme.

## Getting started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  magic_theme: ^0.0.3
```

## Usage

Define a theme once:

```dart
import 'package:magic_theme/magic_theme.dart';

final magicTheme1 = MagicTheme(
  backgroundColor: Colors.red,
  textStyle: const TextStyle(fontSize: 18, color: Colors.white),
  padding: const EdgeInsets.all(16),
  borderRadius: BorderRadius.circular(12),
);
```

Apply its pieces to whichever widgets need them:

```dart
Container(
  padding: magicTheme1.padding,
  decoration: BoxDecoration(
    color: magicTheme1.backgroundColor,
    borderRadius: magicTheme1.borderRadius,
  ),
  child: Text('Hello', style: magicTheme1.textStyle),
);
```

Derive a variant without redefining everything:

```dart
final magicTheme2 = magicTheme1.copyWith(backgroundColor: Colors.blue);
```

See the [example](example/lib/main.dart) for a full runnable demo.

## Additional information

Contributions and issues are welcome on the
[GitHub repository](https://github.com/magicworldltd/magic_theme).
