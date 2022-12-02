import 'package:flutter/material.dart';
import 'package:pogodynka/features/src/themes/app_colors.dart';

final _borderRadius = BorderRadius.circular(12);
final _greyInputBorder = OutlineInputBorder(
  borderRadius: _borderRadius,
  borderSide: BorderSide(color: AppColors.neutral.shade60),
);
final _greenInputBorder = OutlineInputBorder(
  borderRadius: _borderRadius,
  borderSide: const BorderSide(color: AppColors.secondary),
);
final _redInputBorder = OutlineInputBorder(
  borderRadius: _borderRadius,
  borderSide: const BorderSide(color: AppColors.error),
);

final inputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.all(12),
  border: _greyInputBorder,
  focusedBorder: _greenInputBorder,
  errorBorder: _redInputBorder,
);
