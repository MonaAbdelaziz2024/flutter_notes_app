import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.purple,
      ),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Center(
        child: Text('Add', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
      ),
    );
  }
}