import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:magic_theme/magic_theme.dart';

void main() {
  group('MagicTheme', () {
    test('stores the values passed to its constructor', () {
      const theme = MagicTheme(
        backgroundColor: Colors.red,
        textStyle: TextStyle(fontSize: 18),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(8),
      );

      expect(theme.backgroundColor, Colors.red);
      expect(theme.textStyle?.fontSize, 18);
      expect(theme.padding, const EdgeInsets.all(16));
      expect(theme.margin, const EdgeInsets.all(8));
    });

    test('fields default to null when not provided', () {
      const theme = MagicTheme();

      expect(theme.backgroundColor, isNull);
      expect(theme.textStyle, isNull);
      expect(theme.padding, isNull);
    });

    test('copyWith overrides only the given fields', () {
      const original = MagicTheme(
        backgroundColor: Colors.red,
        textStyle: TextStyle(fontSize: 18),
      );

      final copy = original.copyWith(backgroundColor: Colors.blue);

      expect(copy.backgroundColor, Colors.blue);
      // textStyle should be carried over unchanged.
      expect(copy.textStyle?.fontSize, 18);
    });

    test('two themes with identical values are equal', () {
      const themeA = MagicTheme(backgroundColor: Colors.red);
      const themeB = MagicTheme(backgroundColor: Colors.red);

      expect(themeA, equals(themeB));
      expect(themeA.hashCode, equals(themeB.hashCode));
    });

    test('two themes with different values are not equal', () {
      const themeA = MagicTheme(backgroundColor: Colors.red);
      const themeB = MagicTheme(backgroundColor: Colors.blue);

      expect(themeA, isNot(equals(themeB)));
    });
  });
}
