import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample product data
    List<Map<String, String>> items = [
      {
        'title': 'Kids Toy',
        'subtitle': 'Fun and safe toy for children aged 3+',
        'price': '\$12.99',
      },
      {
        'title': 'Mini Car',
        'subtitle': 'Battery-operated mini car for kids',
        'price': '\$29.99',
      },
      {
        'title': 'Soft Doll',
        'subtitle': 'Cute and soft plush doll for girls',
        'price': '\$18.50',
      },
        {
        'title': 'Lapopo',
        'subtitle': 'Cute and soft plush doll for girls',
        'price': '\$180.50',
      },
        {
        'title': 'Soft Doll',
        'subtitle': 'Cute and soft plush doll for girls',
        'price': '\$18.50',
      },
          {
        'title': 'Kids Toy',
        'subtitle': 'Fun and safe toy for children aged 3+',
        'price': '\$12.99',
      },
          {
        'title': 'Kids Toy',
        'subtitle': 'Fun and safe toy for children aged 3+',
        'price': '\$12.99',
      },
 
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Content without image
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index]['title']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          items[index]['subtitle']!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Price: ${items[index]['price']!}",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {
                          },
                         
                          child: const Text('Add to Cart'),
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
