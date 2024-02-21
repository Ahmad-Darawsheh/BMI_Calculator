import 'dart:math';

import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  late double result;
  late bool isMale;
  late final int age;

  BMIResultScreen(
      {super.key,
      required this.result,
      required this.age,
      required this.isMale});

  String d() {
    if (result <= 18.5) {
      return "You are Underweight";
    } else if (result > 18.5 && result <= 24.9) {
      return "Your weight is Normal";
    } else if (result >= 25 && result <= 29.9) {
      return "You are Overweight";
    } else {
      return "You are Obese";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(10, 15, 29, 1),
        title: const Text(
          "BMI Result",
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: const Color.fromRGBO(10, 15, 29, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Gender : ${isMale ? "Male" : "Female"}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white),
              ),
              Text(
                "Result : ${(result * pow(10, 2)).round() / pow(10, 2)}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white),
              ),
              Text(
                "Age : $age",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white),
              ),
              Text(
                d(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
