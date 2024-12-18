import 'package:flutter/material.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> restaurants = [
      {
        'name': 'La Parrilla',
        'description': 'Especialidades en carnes asadas.',
        'image': 'assets/images/balsamo.jpg',
      },
      {
        'name': 'Café del Centro',
        'description': 'Deliciosos postres y café artesanal.',
        'image': 'assets/images/manolo.jpg',
      },
      {
        'name': 'Rincón Italiano',
        'description': 'Las mejores pastas y pizzas de la ciudad.',
        'image': 'assets/images/caporal.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurantes'),
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Imagen del restaurante
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    restaurant['image']!,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                // Información del restaurante
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restaurant['name']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        restaurant['description']!,
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
