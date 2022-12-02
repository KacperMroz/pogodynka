import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pogodynka/features/src/themes/app_colors.dart';
import 'package:pogodynka/features/src/themes/input_decoration.dart';

class AppTextInput extends StatefulWidget {
  const AppTextInput({
    Key? key,
    required this.onChanged,
    this.validator,
    this.labelText,
    this.hintText,
    this.errorText,
    this.initialText,
    this.keyboardType,
    this.inputFormatters,
    this.obscureText = false,
    this.suffixBuilder,
    this.enabled = true,
    this.borderOverride,
    this.autofocus = false,
    this.maxLines = 1,
    this.autocorrect = true,
    this.prefixBuilder,
    this.maxLength = 30,
  }) : super(key: key);

  final ValueChanged<String> onChanged;
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final String? initialText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final Widget Function(Color)? suffixBuilder;
  final Widget Function(Color)? prefixBuilder;
  final bool enabled;
  final InputBorder? borderOverride;
  final bool autofocus;
  final bool autocorrect;
  final int maxLines;
  final int maxLength;
  final String? Function(String?)? validator;

  @override
  _AppTextInputState createState() => _AppTextInputState();
}

class _AppTextInputState extends State<AppTextInput> {
  late final TextEditingController _textEditingController;
  late final FocusNode _focusNode;

  bool _isFocused = false;
  Color componentsColor = AppColors.neutral.shade90;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController(text: widget.initialText);
    _focusNode = FocusNode()..addListener(onFocusChange);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void onFocusChange() => _focusNode.hasFocus != _isFocused
      ? setState(() => _isFocused = !_isFocused)
      : null;

  @override
  Widget build(BuildContext context) {
    componentsColor = widget.errorText != null
        ? Colors.red
        : _isFocused
        ? AppColors.secondary
        : AppColors.neutral.shade90;

    final List<TextInputFormatter> inputFormatters =
        widget.inputFormatters ?? List.empty(growable: true);
    inputFormatters.add(LengthLimitingTextInputFormatter(widget.maxLength));

    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator ?? (value) => null,
      autocorrect: widget.autocorrect,
      inputFormatters: inputFormatters,
      focusNode: _focusNode,
      autofocus: widget.autofocus,
      controller: _textEditingController,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      decoration: inputDecoration.copyWith(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: widget.labelText,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        enabledBorder: _enabledBorder(),
        focusedBorder: _focusedBorder(),
        border: widget.borderOverride,
        filled: true,
        fillColor: widget.enabled ? AppColors.white : AppColors.neutral.shade05,
        hintText: widget.hintText,
        errorText: widget.errorText,
        errorMaxLines: 5,
        suffixIcon: widget.suffixBuilder?.call(componentsColor),
        prefixIcon: widget.prefixBuilder?.call(componentsColor),
      ),
      style: TextStyle(color: componentsColor),
      cursorColor: componentsColor,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      enabled: widget.enabled,
      toolbarOptions: const ToolbarOptions(paste: true, selectAll: true),
    );
  }

  InputBorder _enabledBorder() =>
      widget.borderOverride ??
          OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.neutral.shade20),
            borderRadius: BorderRadius.circular(12),
          );

  InputBorder _focusedBorder() =>
      widget.borderOverride ??
          OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.secondary),
            borderRadius: BorderRadius.circular(12),
          );
}
