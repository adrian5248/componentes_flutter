import 'package:flutter/material.dart';
import 'package:practica3_5c/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

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

    //aqui es para importar una imagen desde la web y tambien es para poner un circulo que indica que carag
    Stack imageWeb(){
      return Stack(
        children: <Widget> [
          const Center(
              child: CircularProgressIndicator(),
            ),
          //esto me siver para ajustar el circulo que indica la carga de la imagen y si no nomas lo quito yse queda asi
          // child: SizedBox(
            //   height: 200,
            //   width: 200, )
          Center(
            child: SizedBox(
            height: 500,
            width: 500,
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: 'https://cdn.botb.com/media/21747/porsche-911-gt3-rs-1.jpg'
              ),
            ),
          ),
        ],
      );
    }
}
            //esto es oara mostar una imagen de la web
            // Image.network()),




        //esto es para ajustar una imagen
        // child: const SizedBox(
        //   height: 500,
        //   width: 500,
        // child: const Image(
        //   image: AssetImage('assets/imgs/viceversa.png'),
        // ),
