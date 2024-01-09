import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('onboard'),
      ),
    );
  }
}
