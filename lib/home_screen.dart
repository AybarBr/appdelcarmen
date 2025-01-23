import 'package:flutter/material.dart';
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
                // Filtro de difuminado
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2), // Ajusta el desenfoque
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0), // Oscurece con opacidad
                    ),
                  ),
                ),
                // Texto centrado
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
              // Añade más ListTile para otras remiserias aquí
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
              // Añade más ListTile para otros colectivos aquí
            ],
          ),
          ListTile(
            leading: const Icon(Icons.event, color: Colors.blueAccent),
            title: const Text('Próximos Eventos'),
            onTap: () {
              // Acción para Eventos
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
          ),
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
                      Text("ReAgenda", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
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
                      Text("ReBonaerense", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
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
                      Text("ReCaminos", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
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
                      Text("ReCircuitos", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
                    ],
                  ),
                ],
              ),
            ],
          ),

            Container(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                EventCard(
                  title: 'Fiesta Nacional de la Diversidad Cultural',
                  imageUrl: 'https://example.com/diversidad_cultural.jpg',
                ),
                EventCard(
                  title: 'Fiesta Nacional del Caballo',
                  imageUrl: 'https://example.com/fiesta_caballo.jpg',
                ),
              ],
            ),
          ),

            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  title: Text('Fiesta Nacional de la Diversidad Cultural'),
                  subtitle: Text('Villa Gesell - 08/10'),
                ),
                ListTile(
                  title: Text('Fiesta Nacional del Caballo'),
                  subtitle: Text('Bragado - 07/10 to 11/10'),
                ),
              ],
            ),
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

class EventCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  EventCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Image.network(imageUrl, height: 100.0, width: 150.0, fit: BoxFit.cover),
          SizedBox(height: 10.0),
          Text(title, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}