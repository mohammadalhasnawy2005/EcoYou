import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final String labelText;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIocn;

  const CustomTextFormAuth({
    super.key,
    required this.hintText,
    required this.icon,
    required this.labelText,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
    this.obscureText,
    this.onTapIocn,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:
          isNumber
              ? TextInputType.numberWithOptions(decimal: true)
              : TextInputType.text,
      validator: valid,
      controller: mycontroller,
      obscureText: obscureText == null || obscureText == false ? false : true,
      decoration: InputDecoration(
        suffixIcon: InkWell(onTap: onTapIocn, child: Icon(icon)),
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(labelText),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35.3)),
      ),
    );
  }
}
