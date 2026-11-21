import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'About me',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int likes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab L1 · 67115998')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 100),
            const SizedBox(height: 16),
            const Text('Juthaphon Sungruang', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            Text('Likes: $likes', style: const TextStyle(fontSize: 20)),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  likes++;
                });
              },
              icon: const Icon(Icons.thumb_up),
              label: const Text('Like'),
            ),
          ],
        ),
      ),
    );
  }
}