library flutter_pkg;

import 'package:flutter/material.dart';

class CustomTestButton extends StatelessWidget{
  final String title;
  final VoidCallback onClick;
  const CustomTestButton({
    super.key, 
    required this.title,
    required this.onClick
  });

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.only(
          top: 10.0,
          left: 15.0,
          bottom: 10.0,
          right: 15.0
        ),
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(5.0))
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          softWrap: true,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.normal)
        ),
      ),
    );
  }
}