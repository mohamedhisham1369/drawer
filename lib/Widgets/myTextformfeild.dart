import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class DefaultFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType type;
  final String? Function(String?)? validation;
  final String label;
  final IconData? prefixIcon;
  bool isPassword = false;
  final IconData? suffix;
  final VoidCallback? suffixPressed;
  final Function()? onTap;
  final Function(String?)? onClick;
  final bool isClickable;

  DefaultFormField({
    Key? key,
    this.controller,
    required this.type,
    required this.validation,
    required this.label,
    this.prefixIcon,
    this.isPassword = false,
    this.suffix,
    this.suffixPressed,
    this.onTap,
    this.onClick,
    this.isClickable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      validator: validation,
      enabled: isClickable,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: HexColor("#484848"),
          fontSize: 15,
        ),
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsets.only(left: 15, right: 5),
                child: Icon(
                  prefixIcon,
                  size: 30,
                ))
            : null,
        prefixIconColor: Colors.white12,
        suffixIconColor: Colors.blue,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(suffix),
                onPressed: () {
                  if (suffixPressed != null) {
                    suffixPressed!();
                  }
                },
              )
            : null,
        filled: true,
        fillColor: HexColor("#252525"),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0), // Make it circular
          borderSide: BorderSide.none, // Remove gray border color
        ),
      ),
      style: const TextStyle(
        color: Colors.white,
      ),
      onTap: onTap,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
