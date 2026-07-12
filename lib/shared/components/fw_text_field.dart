import 'package:flutter/material.dart';

import 'package:fluxa_watch/core/core.dart';

class FwTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixPressed;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;

  const FwTextField({
    super.key,
    this.controller,
    required this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixPressed,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
  });

  @override
  State<FwTextField> createState() => _FwTextFieldState();
}

class _FwTextFieldState extends State<FwTextField> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.inputHeight,
      child: TextFormField(
        controller: widget.controller,
        obscureText: _obscure,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        onChanged: widget.onChanged,
        style: AppTextStyles.body,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: AppTextStyles.caption,
          filled: true,
          fillColor: AppColors.surface,

          prefixIcon: widget.prefixIcon != null
              ? Icon(widget.prefixIcon, color: AppColors.grey)
              : null,

          suffixIcon: widget.suffixIcon != null
              ? IconButton(
                  onPressed: () {
                    if (widget.obscureText) {
                      setState(() {
                        _obscure = !_obscure;
                      });
                    } else {
                      widget.onSuffixPressed?.call();
                    }
                  },
                  icon: Icon(
                    widget.obscureText
                        ? (_obscure ? Icons.visibility_off : Icons.visibility)
                        : widget.suffixIcon,
                    color: AppColors.grey,
                  ),
                )
              : null,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg),
            borderSide: BorderSide(color: AppColors.border),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg),
            borderSide: BorderSide(color: AppColors.primary, width: 2),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg),
          ),
        ),
      ),
    );
  }
}
