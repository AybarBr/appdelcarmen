import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explora la Ciudad',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección Próximos Eventos
            _buildSectionHeader('🎤 Próximos Eventos'),
            _buildImageSection('assets/images/hqdefault.jpg', 'Ver eventos', () {
              // Aquí puedes navegar a la pantalla de eventos
            }),

            // Sección Próximos Recitales
            _buildSectionHeader('🎶 Próximos Recitales'),
            _buildImageSection('assets/images/InShot_20230529_140724805-1024x683.jpg', 'Ver recitales', () {
              // Aquí puedes navegar a la pantalla de recitales
            }),

            const SizedBox(height: 20),

            // Botones de acceso a otras pantallas
            _buildAccessButtons(context),
          ],
        ),
      ),
    );
  }

  // Widget para los títulos de las secciones
  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  // Widget para las imágenes con botones
  Widget _buildImageSection(String imagePath, String buttonText, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              imagePath,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black54,
              child: TextButton(
                onPressed: onPressed,
                child: Text(
                  buttonText,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget para los botones de acceso
  Widget _buildAccessButtons(BuildContext context) {
    return Column(
      children: [
        _buildModernButton(
          context,
          '🗺️ Lugares de Interés',
          Icons.location_city,
          Colors.teal,
          () {
            // Navegar a la pantalla de lugares de interés
          },
        ),
        _buildModernButton(
          context,
          '🍽️ Restaurantes',
          Icons.restaurant,
          Colors.orangeAccent,
          () {
            // Navegar a la pantalla de restaurantes
          },
        ),
      ],
    );
  }

  // Botones modernos con iconos
  Widget _buildModernButton(
      BuildContext context, String label, IconData icon, Color color, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(
          label,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
