import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> places = [
      {
        'name': 'Parque Central',
        'description': 'Un hermoso parque con áreas verdes y fuentes.',
        'image': 'assets/images/plaza.jpg',
      },
      {
        'name': 'Museo de Historia',
        'description': 'Descubre la historia local con artefactos únicos.',
        'image': 'assets/images/iglesia.jpg',
      },
      {
        'name': 'Mirador del Valle',
        'description': 'Una vista espectacular del valle al atardecer.',
        'image': 'assets/images/dique.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lugares de Interés'),
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagen del lugar
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    place['image']!,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                // Información del lugar
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place['name']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        place['description']!,
                        style: const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Acción para ver más detalles
                        },
                        child: const Text('Ver Más'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
