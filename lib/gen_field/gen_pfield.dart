import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GenPassField  extends StatelessWidget {
   GenPassField ({super.key, this.hint, this.prefixicon, this.suffixIcon, this.onSaveFunction, this.tController, this.validator, this.decoration});
  final String? hint;
  final IconData? prefixicon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaveFunction;
  List<TextInputFormatter>? inputFormatters;
  InputDecoration? decoration;
  TextEditingController? tController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: true,
        cursorColor: const Color.fromRGBO(0x38, 0x7b, 0x96, 1.0),
        inputFormatters: inputFormatters,
        decoration: decoration,
      validator: validator,
      onSaved: onSaveFunction,
      controller: tController,
      style: const TextStyle(
      color: Color.fromRGBO(0x38, 0x7b, 0x96, 1.0)),
      );
  }

}