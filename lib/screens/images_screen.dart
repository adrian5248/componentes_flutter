import 'package:flutter/material.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Images',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),

          //esto es para ajustar la imagen
          
        ],
      ),
    );
  }

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)),
        margin: const EdgeInsets.all(20),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/imgs/viceversa.png')
              ),
              //aqui es para agregarle nombre a la imagen
              Container(
                padding: const EdgeInsets.all(10),
                child:  Text('Ciudad Viceversa',
                        style: AppTheme.lightTheme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget imageWeb(){
      return Center(
        child: Image.network('https://www.classicdriver.com/sites/default/files/cars_images/img_8365_0.jpg'),
      );
    }
}


        // child: const SizedBox(
        //   height: 500,
        //   width: 500,
          // child: const Image(
          //   image: AssetImage('assets/imgs/viceversa.png'),
          // ),