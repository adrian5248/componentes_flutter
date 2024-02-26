import 'package:flutter/material.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Text(
                  'regresar',
                  ),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text(
                  'Ir a Data Screen',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
