import 'package:flutter/material.dart';
import 'dart:ui'; // Necesario para BackdropFilter y blur


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: Column(
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
          const SizedBox(height: 40),
          // Botones de navegación
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // Dos botones por fila
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              padding: const EdgeInsets.all(20),
              children: [
                _buildModernButton(
                  context,
                  '🗺️ Lugares de Interés',
                  Icons.location_city,
                  const Color(0xFF8BC34A),
                  () {
                    Navigator.pushNamed(context, '/places');
                  },
                ),
                _buildModernButton(
                  context,
                  '🍽️ Restaurantes',
                  Icons.restaurant,
                  const Color(0xFFFFD600),
                  () {
                    Navigator.pushNamed(context, '/restaurants');
                  },
                ),
                _buildModernButton(
                  context,
                  '🎤 Próximos Recitales',
                  Icons.music_note,
                  const Color(0xFF009688),
                  () {
                    // Acción para Recitales
                  },
                ),
                _buildModernButton(
                  context,
                  '🎉 Próximos Eventos',
                  Icons.event,
                  Colors.white,
                  () {
                    // Acción para Eventos
                  },
                ),
              ],
            ),
          ),
        ],
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
                    color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0), // Oscurece con opacidad
                  ),
                ),
              ),
              // Texto centrado
              Center(
                child: Text(
                  'Menú Principal',
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
          ListTile(
            leading: const Icon(Icons.location_city, color: Color(0xFF8BC34A)),
            title: const Text('Lugares de Interés'),
            onTap: () {
              Navigator.pushNamed(context, '/places');
            },
          ),
          ListTile(
            leading: const Icon(Icons.restaurant, color: Color(0xFFFFD600)),
            title: const Text('Restaurantes'),
            onTap: () {
              Navigator.pushNamed(context, '/restaurants');
            },
          ),
          ListTile(
            leading: const Icon(Icons.music_note, color: Color(0xFF009688)),
            title: const Text('Próximos Recitales'),
            onTap: () {
              // Acción para Recitales
            },
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

  // Método para construir botones modernos
  Widget _buildModernButton(
    BuildContext context,
    String text,
    IconData icon,
    Color color,
    VoidCallback onPressed,
  ) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              offset: const Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 10),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
