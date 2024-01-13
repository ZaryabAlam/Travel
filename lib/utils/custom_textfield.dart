import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelapp/data/data.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final String labelText;
  final String? errorText;
  final Widget? icon;
  final bool? obscureText;
  final Function()? onTap;
  final Function(String? value)? onChanged;
  final FocusNode? focusNode;
  final int? maxlength;
  final List<TextInputFormatter>? inputformatter;
  final Color? errorColor;
  final String? prefixText;
  final String? suffixText;
  final int? maxLines;
  final EdgeInsetsGeometry? contentpadding;
  const CustomTextField({
    required this.textEditingController,
    this.validator,
    this.readOnly,
    required this.labelText,
    this.icon,
    this.obscureText,
    this.onTap,
    this.focusNode,
    this.keyboardType,
    this.maxlength,
    this.inputformatter,
    this.errorText,
    this.errorColor,
    this.onChanged,
    this.prefixText,
    this.suffixText,
    this.maxLines = 1,
    this.contentpadding,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // var theme = context.theme.colorScheme;
    // HeightWidth(context);
    return TextFormField(
      onTapOutside: (event) {},
      maxLines: maxLines,
      maxLength: maxlength,
      inputFormatters: inputformatter,
      keyboardType: keyboardType,
      controller: textEditingController,
      readOnly: readOnly ?? false,
      focusNode: focusNode,
      validator: validator,
      obscureText: obscureText ?? false,
      cursorColor: kmainDarkColor, //kmainDarkColor,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: IconButton(
          icon: icon ?? const SizedBox.shrink(),
          onPressed: onTap,
          color: kmainDarkColor,
          iconSize: 16.0,
        ),
        prefixText: prefixText,
        suffixText: suffixText,
        prefixStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: kmainDarkColor),
        suffixStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: kmainDarkColor),
        contentPadding: contentpadding ?? const EdgeInsets.only(left: 15, right: 15, top: 5),
        isDense: true,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: errorColor ?? Colors.transparent,
          ),
          borderRadius: borderRadiusMedium,
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.6,
              color: kmainDarkColor,
            ),
            borderRadius: borderRadiusMedium),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.6,
            color: kmainDarkColor,
          ),
          borderRadius: borderRadiusMedium,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: errorColor ?? Colors.transparent,
          ),
          borderRadius: borderRadiusMedium,
        ),
        // suffixIcon: IconButton(
        //   icon: icon ?? const SizedBox.shrink(),
        //   onPressed: onTap,
        // ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: borderRadiusMedium,
        ),
        fillColor: Colors.transparent,
        errorStyle: const TextStyle(
          color: Colors.red,
          fontSize: 11,
        ),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        hintText: labelText,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w500),
        filled: false,
        errorText: errorText,
      ),
    );
  }
}
