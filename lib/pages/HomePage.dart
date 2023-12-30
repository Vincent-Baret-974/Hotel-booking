import 'package:flutter/material.dart';

import '../widgets/HotelSection.dart';
import '../widgets/MyAppBar.dart';
import '../widgets/SearchSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            HotelSection()
          ],
        ),
      ),
    );
  }
}