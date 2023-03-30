/* Developed by Eng Mouaz M AlShahmeh */
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screeners extends StatelessWidget {
  const Screeners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screeners Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/symbol_details'),
          child: const Icon(Icons.arrow_forward_outlined),
        ),
      ),
    );
  }
}
