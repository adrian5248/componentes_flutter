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
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadioOption = 0;// esto es para los RadioButton

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //aqui es para mandar a llamar lo que quiero
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
            Text(
              '¿Que usas para correr tus apps de flutter?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
            const ElevatedButton(
              onPressed: null,
              child: Text(
                'Guardar',
              ),
            )
          ],
        ),
      ),
      //el bottomNavigationBar sirve para poner la barra de navegacion en la parte de abajo
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.mainColor,
        items: const [
          //aqui es para poner los iconos que queramos, se recomiendan 4 max
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.white,
            ),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list,
            color: Colors.white,
            ),
            label: "Datos",
            
          ),
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
        const FlutterLogo(),
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

        //aqui es para poner una linea que deslizar slider
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
  Column entradasRadio(){
    return Column(
      children: [
        Text(
            '¿Que prefieres usar para el desarrollo movil?',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.2,
            child: Radio(
              value: 1,
              groupValue: selectedRadioOption,
              onChanged: (value){
                setState(() {
                  selectedRadioOption = value!; //para indicar que si vale null se utiliza el signo de admiración
                });
              }
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.2,
            child: Radio(
              value: 2,
              groupValue: selectedRadioOption,
              onChanged: (value){
                setState(() {
                  selectedRadioOption = value!; //para indicar que si vale null se utiliza el signo de admiración
                  print('Opción seleccionada: $selectedRadioOption');
                });
              },
            ),
          ),
        ),
      ],
    );
  }
  Row entradasCheck(){
    MainAxisAlignment.spaceBetween;
    return Row(
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isCheck1,
          onChanged: (value){
            setState(() {
              isCheck1 = value!;
              print('Valor de Navegador: $isCheck1');
            });
          },
        ),
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isCheck2,
          onChanged: (value){
            setState(() {
              isCheck2 = value!;
              print('Valor de Emulador: $isCheck2');
            });
          },
        ),
        Text(
          'Smartphone',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isCheck3,
          onChanged: (value){
            setState(() {
              isCheck3 = value!;
              print('Valor de Smartphone: $isCheck3');
            });
          },
        ),
      ],
    );
  }

}
