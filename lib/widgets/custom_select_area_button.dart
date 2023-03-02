import 'package:flutter/material.dart';

class SelectAreaButton extends StatelessWidget {
  const SelectAreaButton({
    super.key,
    required this.area,
  });

  final String area;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 44,
        width: 87,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color.fromRGBO(134, 199, 73, 1),
            width: 1,
          ),
        ),
        child: Text(
          area,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color.fromRGBO(16, 63, 0, 1),
          ),
        ),
      ),
    );
  }
}
