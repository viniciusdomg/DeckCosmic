import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5e6050),
      surfaceTint: Color(0xff5e6050),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xfff2f2de),
      onPrimaryContainer: Color(0xff6d6e5e),
      secondary: Color(0xff5f5f57),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe5e3d9),
      onSecondaryContainer: Color(0xff65655d),
      tertiary: Color(0xff576158),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffe9f4e8),
      onTertiaryContainer: Color(0xff657066),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffcf9f6),
      onSurface: Color(0xff1c1b1a),
      onSurfaceVariant: Color(0xff47473f),
      outline: Color(0xff78776f),
      outlineVariant: Color(0xffc8c7bc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff31302f),
      inversePrimary: Color(0xffc7c8b5),
      primaryFixed: Color(0xffe4e4d0),
      onPrimaryFixed: Color(0xff1b1d11),
      primaryFixedDim: Color(0xffc7c8b5),
      onPrimaryFixedVariant: Color(0xff46483a),
      secondaryFixed: Color(0xffe5e3d9),
      onSecondaryFixed: Color(0xff1b1c16),
      secondaryFixedDim: Color(0xffc8c7bd),
      onSecondaryFixedVariant: Color(0xff474740),
      tertiaryFixed: Color(0xffdae5da),
      onTertiaryFixed: Color(0xff141e17),
      tertiaryFixedDim: Color(0xffbec9be),
      onTertiaryFixedVariant: Color(0xff3f4941),
      surfaceDim: Color(0xffddd9d7),
      surfaceBright: Color(0xfffcf9f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f0),
      surfaceContainer: Color(0xfff1edea),
      surfaceContainerHigh: Color(0xffebe7e5),
      surfaceContainerHighest: Color(0xffe5e2df),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff36372a),
      surfaceTint: Color(0xff5e6050),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6d6e5e),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff363730),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6e6d66),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2f3931),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff657066),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf9f6),
      onSurface: Color(0xff111110),
      onSurfaceVariant: Color(0xff36372f),
      outline: Color(0xff53534b),
      outlineVariant: Color(0xff6e6d65),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff31302f),
      inversePrimary: Color(0xffc7c8b5),
      primaryFixed: Color(0xff6d6e5e),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff545647),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6e6d66),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff55554e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff657066),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4d574e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc9c6c3),
      surfaceBright: Color(0xfffcf9f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f0),
      surfaceContainer: Color(0xffebe7e5),
      surfaceContainerHigh: Color(0xffe0dcda),
      surfaceContainerHighest: Color(0xffd4d1ce),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2b2d20),
      surfaceTint: Color(0xff5e6050),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff494a3c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2c2d26),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff494a43),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff252e27),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff424c43),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf9f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2c2d26),
      outlineVariant: Color(0xff494a42),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff31302f),
      inversePrimary: Color(0xffc7c8b5),
      primaryFixed: Color(0xff494a3c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff323426),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff494a43),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff33332d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff424c43),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2b352d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbbb8b6),
      surfaceBright: Color(0xfffcf9f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f0ed),
      surfaceContainer: Color(0xffe5e2df),
      surfaceContainerHigh: Color(0xffd7d4d1),
      surfaceContainerHighest: Color(0xffc9c6c3),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffc7c8b5),
      onPrimary: Color(0xff303124),
      primaryContainer: Color(0xffe4e4d0),
      onPrimaryContainer: Color(0xff646656),
      secondary: Color(0xffc8c7bd),
      onSecondary: Color(0xff30312a),
      secondaryContainer: Color(0xff474740),
      onSecondaryContainer: Color(0xffb7b5ac),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff29332b),
      tertiaryContainer: Color(0xffdae5da),
      onTertiaryContainer: Color(0xff5d675e),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff141312),
      onSurface: Color(0xffe5e2df),
      onSurfaceVariant: Color(0xffc8c7bc),
      outline: Color(0xff929188),
      outlineVariant: Color(0xff47473f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2df),
      inversePrimary: Color(0xff5e6050),
      primaryFixed: Color(0xffe4e4d0),
      onPrimaryFixed: Color(0xff1b1d11),
      primaryFixedDim: Color(0xffc7c8b5),
      onPrimaryFixedVariant: Color(0xff46483a),
      secondaryFixed: Color(0xffe5e3d9),
      onSecondaryFixed: Color(0xff1b1c16),
      secondaryFixedDim: Color(0xffc8c7bd),
      onSecondaryFixedVariant: Color(0xff474740),
      tertiaryFixed: Color(0xffdae5da),
      onTertiaryFixed: Color(0xff141e17),
      tertiaryFixedDim: Color(0xffbec9be),
      onTertiaryFixedVariant: Color(0xff3f4941),
      surfaceDim: Color(0xff141312),
      surfaceBright: Color(0xff3a3937),
      surfaceContainerLowest: Color(0xff0e0e0d),
      surfaceContainerLow: Color(0xff1c1b1a),
      surfaceContainer: Color(0xff20201e),
      surfaceContainerHigh: Color(0xff2a2a28),
      surfaceContainerHighest: Color(0xff353533),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffc7c8b5),
      onPrimary: Color(0xff303124),
      primaryContainer: Color(0xffe4e4d0),
      onPrimaryContainer: Color(0xff47493b),
      secondary: Color(0xffdedcd3),
      onSecondary: Color(0xff262620),
      secondaryContainer: Color(0xff929189),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff29332b),
      tertiaryContainer: Color(0xffdae5da),
      onTertiaryContainer: Color(0xff404a42),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141312),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdeddd2),
      outline: Color(0xffb3b2a8),
      outlineVariant: Color(0xff919187),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2df),
      inversePrimary: Color(0xff47493b),
      primaryFixed: Color(0xffe4e4d0),
      onPrimaryFixed: Color(0xff101207),
      primaryFixedDim: Color(0xffc7c8b5),
      onPrimaryFixedVariant: Color(0xff36372a),
      secondaryFixed: Color(0xffe5e3d9),
      onSecondaryFixed: Color(0xff11120c),
      secondaryFixedDim: Color(0xffc8c7bd),
      onSecondaryFixedVariant: Color(0xff363730),
      tertiaryFixed: Color(0xffdae5da),
      onTertiaryFixed: Color(0xff0a130d),
      tertiaryFixedDim: Color(0xffbec9be),
      onTertiaryFixedVariant: Color(0xff2f3931),
      surfaceDim: Color(0xff141312),
      surfaceBright: Color(0xff454443),
      surfaceContainerLowest: Color(0xff070706),
      surfaceContainerLow: Color(0xff1e1d1c),
      surfaceContainer: Color(0xff282826),
      surfaceContainerHigh: Color(0xff333231),
      surfaceContainerHighest: Color(0xff3e3d3c),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xffc7c8b5),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffe4e4d0),
      onPrimaryContainer: Color(0xff292b1e),
      secondary: Color(0xfff2f0e6),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc4c3ba),
      onSecondaryContainer: Color(0xff0b0c07),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffdae5da),
      onTertiaryContainer: Color(0xff232c25),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff141312),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfff2f0e5),
      outlineVariant: Color(0xffc4c3b9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2df),
      inversePrimary: Color(0xff47493b),
      primaryFixed: Color(0xffe4e4d0),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffc7c8b5),
      onPrimaryFixedVariant: Color(0xff101207),
      secondaryFixed: Color(0xffe5e3d9),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc8c7bd),
      onSecondaryFixedVariant: Color(0xff11120c),
      tertiaryFixed: Color(0xffdae5da),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffbec9be),
      onTertiaryFixedVariant: Color(0xff0a130d),
      surfaceDim: Color(0xff141312),
      surfaceBright: Color(0xff51504e),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff20201e),
      surfaceContainer: Color(0xff31302f),
      surfaceContainerHigh: Color(0xff3c3b3a),
      surfaceContainerHighest: Color(0xff484745),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    canvasColor: Colors.transparent,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
