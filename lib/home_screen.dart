import 'package:flutter/material.dart';
import 'dart:ui'; // Necesario para BackdropFilter y blur

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreenContent(), // Contenido principal de la pantalla de inicio
    //SearchScreen(), // Pantalla de búsqueda
    //MapScreen(), // Pantalla del mapa
    //ProfileScreen(), // Pantalla de perfil
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00695C), // Fondo Verde Oscuro
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color(0xFF00695C), // Mismo color del fondo
        elevation: 0,
      ),
      drawer: _buildDrawer(context), // Menú desplegable a la izquierda
      body: _screens[_currentIndex], // Cambia de pantalla según el índice
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  // Método para construir el Drawer (menú lateral)
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
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
    );
  }
}

// Contenido principal de HomeScreen
class HomeScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20), // Espacio superior
        // Logo del municipio
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100), // Borde redondeado
            child: Image.asset(
              'assets/images/muni.jpg',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Título de la app
        const Text(
          'Explora El Carmen',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255), // Amarillo
          ),
        ),
        const SizedBox(height: 20),
        // Botones de navegación
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            children: [
              _buildModernButton(
                context,
                'Lugares de Interés',
                'assets/images/plaza.jpg',
                () {
                  Navigator.pushNamed(context, '/places');
                },
              ),
              const SizedBox(height: 20),
              _buildModernButton(
                context,
                'Gastronomía',
                'assets/images/manolo.jpg',
                () {
                  Navigator.pushNamed(context, '/restaurants');
                },
              ),
              const SizedBox(height: 20),
              _buildModernButton(
                context,
                'Festivales',
                'assets/images/recitales.jpg',
                () {
                  // Acción para Recitales
                },
              ),
              const SizedBox(height: 20),
              _buildModernButton(
                context,
                'Próximos Eventos',
                'assets/images/eventos.jpg',
                () {
                  // Acción para Eventos
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Método para construir botones modernos con desenfoque
  Widget _buildModernButton(
    BuildContext context,
    String text,
    String imagePath,
    VoidCallback onPressed,
  ) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Imagen de fondo
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            // Filtro de desenfoque
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1), // Ajusta el desenfoque aquí
                child: Container(
                  color: Colors.black.withOpacity(0.3), // Oscurece un poco el fondo
                ),
              ),
            ),
            // Texto centrado
            Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
