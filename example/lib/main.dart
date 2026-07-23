import 'package:flutter/material.dart';
import 'package:magic_theme/magic_theme.dart';

void main() => runApp(const MagicThemeExampleApp());

/// A couple of sample themes to show how MagicTheme is defined once and
/// reused across different widgets.
final MagicTheme magicTheme1 = MagicTheme(
  backgroundColor: Colors.red.shade100,
  textStyle: const TextStyle(fontSize: 18, color: Colors.black87),
  padding: const EdgeInsets.all(16),
  margin: const EdgeInsets.all(8),
  borderRadius: BorderRadius.circular(12),
  iconTheme: const IconThemeData(color: Colors.red, size: 28),
);

final MagicTheme magicTheme2 = magicTheme1.copyWith(
  backgroundColor: Colors.blue.shade100,
  iconTheme: const IconThemeData(color: Colors.blue, size: 28),
);

class MagicThemeExampleApp extends StatelessWidget {
  const MagicThemeExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'magic_theme example',
      home: const MagicThemeDemoPage(),
    );
  }
}

class MagicThemeDemoPage extends StatelessWidget {
  const MagicThemeDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('magic_theme example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: magicTheme1.margin,
              padding: magicTheme1.padding,
              decoration: BoxDecoration(
                color: magicTheme1.backgroundColor,
                borderRadius: magicTheme1.borderRadius,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: magicTheme1.iconTheme?.color),
                  const SizedBox(width: 8),
                  Text('Theme 1', style: magicTheme1.textStyle),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              margin: magicTheme2.margin,
              padding: magicTheme2.padding,
              decoration: BoxDecoration(
                color: magicTheme2.backgroundColor,
                borderRadius: magicTheme2.borderRadius,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: magicTheme2.iconTheme?.color),
                  const SizedBox(width: 8),
                  Text('Theme 2', style: magicTheme2.textStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
