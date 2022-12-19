import 'package:flutter/material.dart';

class LandScapeScreen extends StatelessWidget {
  const LandScapeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const   [
        //* imagen Principal

        Image(image: AssetImage('assets/Landscape-fotoarte.jpg')),

        //* widget calificación

       _WidgetCalificacion(),

        //* button seccion

       _ButtomSeccion(),

       //* Widgets de texto

        _WidgetDeTexto()
      ],
    ));
  }
}

class _WidgetCalificacion extends StatelessWidget {
  const _WidgetCalificacion();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Montañas de sesquile',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('la Mejor experiencia de colombia')
            ],
          ),
          Expanded(child: Container()),
          const Text('4.7'),
          const Icon(Icons.star_border_purple500_rounded, color: Colors.red)
        ],
      ),
    );
  }
}

class _ButtomSeccion extends StatelessWidget {
  const _ButtomSeccion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const  [
         _IconAndText(icon: Icons.phone, title: 'CALL',),
         _IconAndText(icon: Icons.route, title: 'ROUTE',),
         _IconAndText(icon: Icons.share, title: 'SHARE',),
        ],
      ),
    );
  }
}

class _IconAndText extends StatelessWidget {
  
  final String title;
  final IconData icon;

  const _IconAndText({
    super.key, 
    required this.title, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Icon(icon),
        Text(title)
        ],
        
    );
  }
}

class _WidgetDeTexto extends StatelessWidget {
  const _WidgetDeTexto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child:   const Text(
        'Fusce eu sapien sit amet ipsum faucibus commodo. Suspendisse arcu risus, sollicitudin eu pretium quis, ultrices sed urna. Sed in ultrices turpis. Fusce vehicula lectus et diam accumsan, ut elementum eros sagittis. Curabitur quis purus et risus viverra laoreet. Aenean in dolor porttitor, pretium ante id, consectetur orci. Proin lobortis ut arcu eu euismod. In faucibus condimentum eros eget fermentum. Phasellus tincidunt gravida nunc ut mollis. Curabitur ut orci vel velit ornare condimentum vulputate ac orci. Aliquam eget laoreet dolor. Curabitur elementum est ac purus luctus pretium. Aliquam ac tempor libero. Quisque tincidunt velit vitae quam sodales, a ultrices eros mattis. Donec venenatis libero non leo accumsan, vel feugiat velit tristique.',
        textAlign: TextAlign.justify,),
    );
  }
}