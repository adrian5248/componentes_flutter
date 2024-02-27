import 'package:flutter/material.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  //aqui podemos declarar las variables
  bool valueSwitch = false;
  double valueSlider = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
          //aqui es para mandar a llamar lo que quiero
          entradaTexto(),
          entradaSwitch(),
          entradaSlider(),
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

  //esto es para la entrada de texto
  TextField entradaTexto() {
    return TextField(
          style: AppTheme.lightTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: 'Escribe tu nombre: ',
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        );
  }

  Row entradaSwitch(){
    return Row(
      children: <Widget>[
        Text(
          '¿Te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 25.0,
        ),
        //aqui es para agregar un swithch
        Switch(
          value: valueSwitch,
          onChanged: (value){
            //el setstate sirve para que se quede quieto el switch
            setState(() {
              valueSwitch = value;
              print('Estado del switch $valueSwitch');
            });
          },
        ),
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      children: [
        Text('¿Que tanto te gusta flutter?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),

        //aqui es para poner una linea que desliza
        Slider(
          min: 0.0,
          max: 10.0,
          //este es el valor de nuestra variable
          value: valueSlider,
          //aqui es para poner colores a la barra
          activeColor: AppTheme.mainColor,
          inactiveColor: AppTheme.accentColor,
          thumbColor: Colors.white,
          //aqui es para ponerle divisiones a la barra
          divisions: 10,
          //aqui es para asignarle valor conforme avance la rayita
          label: '${valueSlider.round()}',
          onChanged: (value) {
            setState(() {
              valueSlider = value;
              print('Valor del slider: $valueSlider');
            });
          }
        ),
      ],
    );
  }
}
