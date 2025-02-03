import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          title: Center(
            child: Image.asset(
              'assets/images/logo_turismo.png',
              height: 150,
            ),
          ),
          actions: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          ],
        ),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20), // Evita que se solape con el BottomNavigationBar
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
              SizedBox(height: 20),
              // Botones circulares
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircularButton(Icons.calendar_today, "Agenda"),
                  _buildCircularButton(Icons.explore, "Lugares"),
                  _buildCircularButton(Icons.map, "Mapas"),
                  _buildCircularButton(Icons.directions_walk, "Actividades"),
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
                  {"image": "assets/images/eventos.jpg", "title": "Festival de la Música", "subtitle": "25 de enero - Plaza Central"},
                  {"image": "assets/images/recitales.jpg", "title": "Carnaval del Pueblo", "subtitle": "15 de febrero - Avenida Principal"},
                  {"image": "assets/images/eventos.jpg", "title": "Feria Artesanal", "subtitle": "8 de marzo - Parque Cultural"},
                ].map((evento) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(evento['image']!, fit: BoxFit.cover, width: double.infinity),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
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
                                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Text(evento['subtitle']!, style: TextStyle(color: Colors.white70, fontSize: 14)),
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

              // Botones rectangulares
              _buildRoundedButton(context, 'Gastronomía', 'assets/images/manolo.jpg', () {
                Navigator.pushNamed(context, '/gastronomia');
              }),
              SizedBox(height: 20),
              _buildRoundedButton(context, 'Lugares', 'assets/images/plaza.jpg', () {
                Navigator.pushNamed(context, '/lugares');
              }),
              SizedBox(height: 20),
              _buildRoundedButton(context, 'Alojamiento', 'assets/images/patio.jpg', () {
                  Navigator.pushNamed(context, '/hoteleria');
                }),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),

      // Menú inferior fijo ✅
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.white, // 👈 Fondo sólido en blanco (o cámbialo al color que quieras)
      selectedItemColor: Color(0xFF00695C), // 👈 Color del ícono y texto cuando está seleccionado
      unselectedItemColor: Colors.grey, // 👈 Color del ícono y texto cuando NO está seleccionado
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
        BottomNavigationBarItem(icon: Icon(Icons.more), label: 'Más'),
  ],
),
    );
  }

  Widget _buildCircularButton(IconData icon, String label) {
    return Column(
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: CircleAvatar(
            backgroundColor: Color(0xFF00695C).withOpacity(0.2),
            child: Icon(icon, color: Color(0xFF00695C), size: 30),
          ),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 15)),
      ],
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
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5), // Ajusta la opacidad aquí (0.0 a 1.0)
            BlendMode.srcOver, // Modo de mezcla
          ),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.normal,
            fontFamily: 'AlexBrush', // Aquí va el nombre de la fuente
          ),
        ),
      ),
    ),
  );
}
