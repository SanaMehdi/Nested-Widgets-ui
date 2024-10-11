import 'package:flutter/material.dart';

class ComplexUI extends StatelessWidget {
  const ComplexUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Complex UI Example"),
        backgroundColor: Colors.deepOrange[900],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // First Row with two containers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.orange[300],
                  child: const Text(
                    'Container 1',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  color: Colors.blue[300],
                  child: const Text(
                    'Container 2',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),

            // Text input field
            const TextField(
              decoration: InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),

            // Nested Column inside a Container
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nested Column',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Button 1 Pressed');
                        },
                        child: const Text('Button 1'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('Button 2 Pressed');
                        },
                        child: const Text('Button 2'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            // Another Row with Icon and Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red[400],
                  size: 30.0,
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    print('Like Pressed');
                  },
                  child: const Text('Like'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Complex UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ComplexUI(),
    );
  }
}
