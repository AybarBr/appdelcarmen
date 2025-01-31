import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Asegúrate de añadir este paquete en pubspec.yaml
import 'dart:ui'; // Import necesario para ImageFilter

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Ajusta la altura según sea necesario
        child: AppBar(
          title: Center(
            child: Image.asset(
              'assets/images/logo_turismo.png',
              height: 150, // Ajusta la altura según sea necesario
            ),
          ),
          actions: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/menu.jpg'), // Ruta de la imagen
                  fit: BoxFit.cover, // La imagen cubre completamente el espacio
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2), // Ajusta el desenfoque
                      child: Container(
                        color: Colors.white.withOpacity(0), // Oscurece con opacidad
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Información Útil',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        shadows: [
                          Shadow(
                            color: Colors.black54,
                            offset: Offset(1, 1),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Otros elementos del Drawer...
            ExpansionTile(
            leading: const Icon(Icons.local_hospital, color: Color(0xFF8BC34A)),
            title: const Text('Farmacias'),
            children: [
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Farmacia Nueva Libertad'),
                subtitle: Text('San Martín 223'),
                onTap: () {
                  Navigator.pushNamed(context, '/farmacia_nueva_libertad');
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Farmacia San Nicolás'),
                subtitle: Text('Belgrano 348'),
                onTap: () {
                  Navigator.pushNamed(context, '/farmacia_san_nicolas');
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Farmacia Fossati'),
                subtitle: Text('Belgrano 45'),
                onTap: () {
                  Navigator.pushNamed(context, '/farmacia_fossati');
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Farmacia San Cayetano'),
                subtitle: Text('Belgrano 401'),
                onTap: () {
                  Navigator.pushNamed(context, '/farmacia_san_cayetano');
                },
              ),
              // Añade más ListTile para otras farmacias aquí
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.car_crash_rounded, color: Color.fromARGB(255, 74, 126, 195)),
            title: const Text('Remiserias'),
            children: [
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Remiseria El Tio'),
                subtitle: Text('3884933638'),
                onTap: () {
                  Navigator.pushNamed(context, '/remiseria_el_tio');
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Remiseria La Terminal 1'),
                subtitle: Text('03884933330'),
                onTap: () {
                  Navigator.pushNamed(context, '/remiseria_la_terminal1');
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Remiseria La Terminal 2'),
                subtitle: Text('-'),
                onTap: () {
                  Navigator.pushNamed(context, '/remiseria_la_terminal1');
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Remises La Cienaga'),
                subtitle: Text('03884933700'),
                onTap: () {
                  Navigator.pushNamed(context, '/remises_la_cienaga');
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Remiseria Lider'),
                subtitle: Text('03885714104'),
                onTap: () {
                  Navigator.pushNamed(context, '/remiseria_lider');
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Remises Centro'),
                subtitle: Text('-'),
                onTap: () {
                  Navigator.pushNamed(context, '/remises_centro');
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Remises El Carmen'),
                subtitle: Text('-'),
                onTap: () {
                  Navigator.pushNamed(context, '/remises_el_carmen');
                },
              ),
              // Añade más ListTile para otras farmacias aquí
            ],
          ),
         ExpansionTile(
            leading: const Icon(Icons.bus_alert_rounded, color: Color.fromARGB(255, 74, 195, 149)),
            title: const Text('Colectivos'),
            children: [
              ListTile(
                leading: const Icon(Icons.location_pin, color: Color.fromARGB(255, 206, 11, 11)),
                title: Text('Terminal de Ómnibus'),
                subtitle: Text('Y4603 El Carmen, Jujuy'),
                onTap: () {
                  Navigator.pushNamed(context, '/terminal_de_omnibus');
                },
              ),
              
              // Añade más ListTile para otras farmacias aquí
            ],
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.blueAccent),
            title: const Text('Ajustes'),
            onTap: () {
              // Acción para Eventos
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );

            },
          ),
          Divider(), // Separador visual
          ListTile(
            leading: const Icon(Icons.info, color: Colors.grey),
            title: const Text('Acerca de'),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          const Spacer(), // Empuja la versión de la app hacia abajo
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Versión 1.0.0',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
          )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar...',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            Column(
            children: [
              SizedBox(height: 20), // Espacio entre la barra de búsqueda y el Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF00695C).withOpacity(0.2),
                          child: Icon(Icons.calendar_today, color: Color(0xFF00695C), size: 30),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Agenda", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF00695C).withOpacity(0.2),
                          child: Icon(Icons.explore, color: Color(0xFF00695C), size: 30),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Lugares", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF00695C).withOpacity(0.2),
                          child: Icon(Icons.map, color: Color(0xFF00695C), size: 30),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Mapas", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF00695C).withOpacity(0.2),
                          child: Icon(Icons.directions_walk, color: Color(0xFF00695C), size: 30),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("Actividades", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                    ],
                  ),
                ],
              ),
            ],
          ),
 

            SizedBox(height: 20),
            // Carrusel de imágenes
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                aspectRatio: 16 / 9,
                autoPlayInterval: Duration(seconds: 3),
              ),
              items: [
                {
                  "image": "assets/images/eventos.jpg",
                  "title": "Festival de la Música",
                  "subtitle": "25 de enero - Plaza Central",
                },
                {
                  "image": "assets/images/recitales.jpg",
                  "title": "Carnaval del Pueblo",
                  "subtitle": "15 de febrero - Avenida Principal",
                },
                {
                  "image": "assets/images/eventos.jpg",
                  "title": "Feria Artesanal",
                  "subtitle": "8 de marzo - Parque Cultural",
                },
              ].map((evento) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            evento['image']!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.6),
                                Colors.transparent,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          right: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                evento['title']!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black54,
                                      offset: Offset(1, 1),
                                      blurRadius: 3,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                evento['subtitle']!,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            // Otros elementos de la pantalla
            // Botones rectangulares redondeados
            Column(
            children: [
              _buildRoundedButton(
                context,
                'Gastronomía',
                'assets/images/manolo.jpg',
                () {
                  Navigator.pushNamed(context, '/gastronomia');
                },
              ),
              SizedBox(height: 20), // Espacio entre los botones
              _buildRoundedButton(
                context,
                'Lugares',
                'assets/images/plaza.jpg',
                () {
                  Navigator.pushNamed(context, '/lugares');
                },
              ),
              SizedBox(height: 20), // Espacio entre los botones
              _buildRoundedButton(
                context,
                'Alojamiento',
                'assets/images/patio.jpg',
                () {
                  Navigator.pushNamed(context, '/hoteleria');
                },
              ),
            ],
          ),

            SizedBox(height: 20), // Espacio adicional
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Eventos'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapas'),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: 'Más'),
        ],
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Ajustes'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset('assets/images/usa.png', width: 42, height: 42),
            title: Text('Inglés'),
            onTap: () {
              // Lógica para cambiar al idioma inglés
            },
          ),
          ListTile(
            leading: Image.asset('assets/images/españa.png', width: 42, height: 42),
            title: Text('Español'),
            onTap: () {
              // Lógica para cambiar al idioma español
            },
          ),
          ListTile(
            leading: Image.asset('assets/images/brasil.png', width: 42, height: 42),
            title: Text('Portugués'),
            onTap: () {
              // Lógica para cambiar al idioma portugués
            },
          ),
        ],
      ),
    );
  }
}

Widget _buildRoundedButton(BuildContext context, String title, String imagePath, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 360,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(1, 1),
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}