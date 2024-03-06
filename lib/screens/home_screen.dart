import 'package:flutter/material.dart';
import 'package:practica3_5c/screens/images_screen.dart';
import 'package:practica3_5c/screens/infinite_list_screen.dart';
import 'package:practica3_5c/screens/inputs_screen.dart';
import 'package:practica3_5c/screens/notifications_screen.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Flutter'),
      ),
      // el listView sirve para hacer una lista y aparesca el scrol
        body: ListView(
          children:  [
            ListTile(
              leading: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.input_rounded),),
              title: Text(
                'Entradas',
                style: Theme.of(context).textTheme.headlineLarge,
                ),
                subtitle: const Text('diferentes widgets para entradas de flutter',
                ),
                // trailing: const CircularProgressIndicator(
                //   //el value es para que si quiero que gire o este estatico ya sea que se lo quite o se lo ponga
                //   //value: 0.5,
                //   //el strokeWidth es para cambiar el ancho del icono de la ruedita
                //   strokeWidth: 5.0,
                //   color: AppTheme.mainColor,
                //   backgroundColor: Color.fromARGB(255, 74, 132, 150),
                // ),
                trailing: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.arrow_circle_right),
                ),
                
                onTap: () {
                  final ruta1 = MaterialPageRoute(builder: (context) {
                    return const InputsScreen();
                  });
                  Navigator.push(context, ruta1);
                },
            ),

            const Divider(),
            ListTile(
              // Este es un titulo
              leading: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.list_alt_rounded),),
              title: Text(
                'ListView.builder',
                style: Theme.of(context).textTheme.headlineLarge,
                ),
              subtitle: const Text('listas'),
              trailing: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.add_reaction_outlined),),
              onTap: () {
                  final ruta2 = MaterialPageRoute(builder: (context) {
                    return const InfiniteListScreen();
                  });
                  Navigator.push(context, ruta2);
                },
            ),
            
            const Divider(),
            ListTile(
              // Este es un titulo
              leading: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.notification_add),),
              title: Text('Notificaciones',
                  style: AppTheme.lightTheme.textTheme.headlineLarge),
              subtitle: Text(
                'Creacion de notificaciones',
                style: AppTheme.lightTheme.textTheme.bodySmall,
                ),
              trailing: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.arrow_circle_right),
              ),
                onTap: () {
                  final ruta3 = MaterialPageRoute(builder: (context) {
                    return const NotificationsScreen();
                  });
                  Navigator.push(context, ruta3);
                },
              ),
              ListTile(
                leading: IconTheme(
                  data: AppTheme.lightTheme.iconTheme,
                  child: const Icon(Icons.image), ),
                title: Text(
                  'Imágenes',
                  style: AppTheme.lightTheme.textTheme.headlineLarge,
                ),
                subtitle: Text(
                  'Widgets de manejo de images',
                  style: AppTheme.lightTheme.textTheme.headlineSmall,
                ),
                trailing: IconTheme(
                  data: AppTheme.lightTheme.iconTheme,
                  child: const Icon(Icons.arrow_circle_right),
                ),
                onTap: () {
                  final ruta4 = MaterialPageRoute(builder: (context) {
                    return const ImagesScreen();
                  });
                  Navigator.push(context, ruta4);
                },
              ),
            ],
          ),
        );
    }
  }
