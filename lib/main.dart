import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const dGreen = Color(0xFF54D3C2);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels booking',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSize {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
          icon: Icon(
              Icons.arrow_back,
              color: Colors.grey.shade800,
              size: 20
          ),
          onPressed: () {

          },
      ),
      title: Text(
          'Explore',
          style: GoogleFonts.nunito(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w800
          )
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
            icon: Icon(
                Icons.favorite_outline_rounded,
                color: Colors.grey.shade800,
                size: 20
            ),
            onPressed: () {

            },
        ),
        IconButton(
            icon: Icon(
              Icons.place,
              color: Colors.grey.shade800,
              size: 20
            ),
          onPressed: () {

          },
        )
      ],
    );
  }
}