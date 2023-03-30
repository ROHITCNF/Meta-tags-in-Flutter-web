import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SymbolDetails extends StatelessWidget {
  const SymbolDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SymbolDetails Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Icon(Icons.arrow_forward_outlined),
        ),
      ),
    );
  }
}
