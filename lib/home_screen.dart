import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      // el listView sirve para hacer una lista y aparesca el scrol
        body: ListView(
          children: const[
            Text('KC campeones del 5b'),
            ListTile(
              // Este es un titulo
              leading: Icon(Icons.mode_of_travel),
              title: Text(
                'KC campeones del 5b',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              subtitle: Text('11-02-2024 - Las vegas'),
              trailing: Icon(Icons.arrow_circle_right),
            ),
            //Este es un subtitulo
            ListTile(
              leading: Icon(Icons.flag),
              title: Text('KC campeones del 5b'),
              subtitle: Text(
                '10-02-2023 - Arizona',
                style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),


                ),
              trailing: Icon(Icons.arrow_circle_right),

            ),
            ListTile(
              leading: Icon(Icons.flight),
              title: Text('KC campeones del 5b'),
              subtitle: Text(
                '10-02-2022 - Miami',
                style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                ),
              trailing: Icon(Icons.arrow_circle_right),
            ),
          ],
        ),
    );
  }
}