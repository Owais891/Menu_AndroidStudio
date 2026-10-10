import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Menu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const RestaurantPage(),
    );
  }
}

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Menu'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Food Section Title
            const Text(
              'Food Items',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),

            // Food Items List
            _buildMenuItem(
              name: 'Classic Beef Burger',
              image: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format&fit=crop',
            ),
            _buildMenuItem(
              name: 'Pepperoni Pizza',
              image: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format&fit=crop',
            ),
            _buildMenuItem(
              name: 'Creamy Italian Pasta',
              image: 'https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?w=500&auto=format&fit=crop',
            ),

            const SizedBox(height: 24),

            // Drinks Section Title
            const Text(
              'Drinks & Beverages',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),

            // Drinks Items List
            _buildMenuItem(
              name: 'Iced Coffee',
              image: 'https://images.unsplash.com/photo-1517701604599-bb29b565090c?w=500&auto=format&fit=crop',
            ),
            _buildMenuItem(
              name: 'Fresh Orange Juice',
              image: 'https://images.unsplash.com/photo-1613478223719-2ab802602423?w=500&auto=format&fit=crop',
            ),
            _buildMenuItem(
              name: 'Chocolate Milkshake',
              image: 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=500&auto=format&fit=crop',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required String name,
    required String image,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                image,
                height: 70,
                width: 70,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 70,
                  width: 70,
                  color: Colors.grey[300],
                  child: const Icon(Icons.fastfood, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
