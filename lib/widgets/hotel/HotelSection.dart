import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HotelCard.dart';

const dGreen = Color(0xFF54D3C2);

class HotelSection extends StatelessWidget {
  HotelSection({super.key});

  final List hotelList = [
    {
      'title': 'Le cilaos',
      'place': 'Cilaos, La Réunion',
      'distance': 2,
      'review': 36,
      'picture': 'images/hotel_le_cilaos.jpeg',
      'price': 180
    },
    {
      'title': 'LUX',
      'place': 'Saint-Gilles, La Réunion',
      'distance': 3,
      'review': 13,
      'picture': 'images/hotel_lux.jpeg',
      'price': 220
    },
    {
      'title': 'Le palm',
      'place': 'Grande Anse, La Réunion',
      'distance': 6,
      'review': 88,
      'picture': 'images/hotel_palm.jpeg',
      'price': 400
    },
    {
      'title': 'Santa apolonia',
      'place': 'Saint-leu, La Réunion',
      'distance': 11,
      'review': 34,
      'picture': 'images/hotel_santa_apolonia.jpeg',
      'price': 910
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '550 hotels found',
                    style: GoogleFonts.nunito(color: Colors.black, fontSize: 15)
                  ),
                  Row(
                    children: [
                      Text(
                        'Filters',
                        style: GoogleFonts.nunito(color: Colors.black, fontSize: 15)
                      ),
                      IconButton(
                        icon: const Icon(
                            Icons.filter_list_outlined,
                            color: dGreen,
                            size: 25
                        ),
                        onPressed: () {

                        }
                      )

                    ],
                  )
                ],
              ),
            ),
            Column(
              children: hotelList.map((hotel) {
                return HotelCard(hotel);
              }).toList(),
            )
          ],
        ),
    );
  }
}