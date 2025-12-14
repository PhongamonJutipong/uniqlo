import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqlo/Model/uniqlo.dart';
import 'package:uniqlo/uniqlo-detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
      ),
      home: const MyHomePage(title: 'UNIQLO Catalog'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: (Uniqlo.samples.length / 2).ceil(),
          itemBuilder: (context, index) {
            int firstIndex = index * 2;
            int secondIndex = firstIndex + 1;
            return Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              Uniqlodetail(uniqlo: Uniqlo.samples[firstIndex]),
                        ),
                      );
                    },
                    child: buildRecipeCard(Uniqlo.samples[firstIndex]),
                  ),
                ),
                const SizedBox(width: 12),
                if (secondIndex < Uniqlo.samples.length)
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Uniqlodetail(
                              uniqlo: Uniqlo.samples[secondIndex],
                            ),
                          ),
                        );
                      },
                      child: buildRecipeCard(Uniqlo.samples[secondIndex]),
                    ),
                  )
                else
                  const Expanded(child: SizedBox()),
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Uniqlo uniqlo) {
  return Card(
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Image.asset(uniqlo.imgPath, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            uniqlo.imgName,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ),
  );
}
