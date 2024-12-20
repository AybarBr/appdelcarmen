import 'package:flutter/material.dart';
import 'dart:ui'; // Para BackdropFilter y desenfoques

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> restaurants = [
      {
        'name': 'La Casona de Manolo',
        'description': 'Especialidad en cortes de carne premium.',
        'image': 'assets/images/manolo.jpg',
      },
      {
        'name': 'Bálsamo',
        'description': 'Las mejores pizzas artesanales de la ciudad.',
        'image': 'assets/images/balsamo.jpg',
      },
      {
        'name': 'Caporal Café',
        'description': 'Ambiente acogedor con café y postres deliciosos.',
        'image': 'assets/images/caporal.jpg',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF6A1B9A), // Fondo morado oscuro
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A148C), // Morado más oscuro
        title: const Text(
          'Restaurantes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return GestureDetector(
            onTap: () {
              // Acción al tocar un restaurante
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Imagen de fondo
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      restaurant['image']!,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Filtro de desenfoque
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                      child: Container(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  // Contenido del texto
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          restaurant['name']!,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          restaurant['description']!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
