import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../../features/init/view_model/init_view_model.dart';
import '../../locators/locators.dart';
import 'base/base_theme_service.dart';

@singleton
class ThemeService implements BaseThemeService {
  final _initViewModel = locator<InitViewModel>();

  final ThemeData _themeDark = FlexThemeData.dark(
    scheme: FlexScheme.aquaBlue,
    useMaterial3: true,
  );

  final ThemeData _themeLight = FlexThemeData.light(
    scheme: FlexScheme.aquaBlue,
    useMaterial3: true,
  );

  ThemeData get theme =>
      _initViewModel.brightness == Brightness.dark ? _themeDark : _themeLight;

  TextTheme get textStyle => theme.textTheme;
}
