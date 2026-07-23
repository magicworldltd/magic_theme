import 'package:flutter/material.dart';

/// A reusable bundle of style values that can be defined once and applied
/// wherever needed across your widget tree.
///
/// Example:
/// ```dart
/// final magicTheme1 = MagicTheme(
///   backgroundColor: Colors.red,
///   textStyle: TextStyle(fontSize: 18, color: Colors.white),
/// );
///
/// Container(
///   color: magicTheme1.backgroundColor,
///   padding: magicTheme1.padding,
///   child: Text('Hello', style: magicTheme1.textStyle),
/// );
/// ```
///
/// All fields are optional (nullable) so a [MagicTheme] only needs to define
/// the styles it actually cares about.
@immutable
class MagicTheme {
  /// Creates a [MagicTheme]. All parameters are optional.
  const MagicTheme({
    this.textStyle,
    this.padding,
    this.margin,
    this.iconTheme,
    this.buttonStyle,
    this.borderRadius,
    this.backgroundColor,
  });

  /// Text styling, typically applied via `Text(style: theme.textStyle)`.
  final TextStyle? textStyle;

  /// Inner spacing, typically applied via `Container.padding` or
  /// `Padding.padding`.
  final EdgeInsetsGeometry? padding;

  /// Outer spacing, typically applied via `Container.margin`.
  final EdgeInsetsGeometry? margin;

  /// Icon styling, typically applied via `IconTheme` or `Icon(color: ...)`.
  final IconThemeData? iconTheme;

  /// Button styling, typically applied via
  /// `ElevatedButton.styleFrom` / `ButtonStyle`.
  final ButtonStyle? buttonStyle;

  /// Corner radius, typically used inside a `BoxDecoration` or
  /// `RoundedRectangleBorder`.
  final BorderRadiusGeometry? borderRadius;

  /// General background color, applicable to `Container`, `Card`, `Chip`,
  /// etc.
  final Color? backgroundColor;

  /// Returns a copy of this theme with the given fields replaced.
  MagicTheme copyWith({
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    IconThemeData? iconTheme,
    ButtonStyle? buttonStyle,
    BorderRadiusGeometry? borderRadius,
    Color? backgroundColor,
  }) {
    return MagicTheme(
      textStyle: textStyle ?? this.textStyle,
      padding: padding ?? this.padding,
      margin: margin ?? this.margin,
      iconTheme: iconTheme ?? this.iconTheme,
      buttonStyle: buttonStyle ?? this.buttonStyle,
      borderRadius: borderRadius ?? this.borderRadius,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MagicTheme &&
        other.textStyle == textStyle &&
        other.padding == padding &&
        other.margin == margin &&
        other.iconTheme == iconTheme &&
        other.buttonStyle == buttonStyle &&
        other.borderRadius == borderRadius &&
        other.backgroundColor == backgroundColor;
  }

  @override
  int get hashCode => Object.hash(
    textStyle,
    padding,
    margin,
    iconTheme,
    buttonStyle,
    borderRadius,
    backgroundColor,
  );
}
