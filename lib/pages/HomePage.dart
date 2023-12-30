import 'package:flutter/material.dart';

import '../widgets/hotel/HotelSection.dart';
import '../widgets/MyAppBar.dart';
import '../widgets/SearchSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchSection(),
            HotelSection()
          ],
        ),
      ),
    );
  }
}