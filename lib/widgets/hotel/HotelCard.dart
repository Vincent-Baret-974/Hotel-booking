import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const dGreen = Color(0xFF54D3C2);

class HotelCard extends StatelessWidget {
  final Map hotelData;
  const HotelCard(this.hotelData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: const Offset(0, 3)
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(hotelData['picture']),
                  fit: BoxFit.cover
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18)
              )
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 5,
                    right: -15,
                    child: MaterialButton(
                      color: Colors.white,
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.favorite_outline_rounded,
                        color: dGreen,
                        size: 20
                      ),
                      onPressed: () {

                      },
                    ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    hotelData['title'],
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w800
                    )
                ),
                Text(
                    '\$${hotelData['price']}',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w800
                    ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                        hotelData['place'],
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w400
                        ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                        Icons.place,
                        color: dGreen,
                        size: 14
                    ),
                    Text(
                        '${hotelData['distance']} km to city',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w400
                        )
                    ),
                  ],
                ),
                Text(
                    '/per night',
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w400
                    ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: dGreen,
                      size: 14
                    ),
                    Icon(
                        Icons.star_rate,
                        color: dGreen,
                        size: 14
                    ),
                    Icon(
                        Icons.star_rate,
                        color: dGreen,
                        size: 14
                    ),
                    Icon(
                        Icons.star_rate,
                        color: dGreen,
                        size: 14
                    ),
                    Icon(
                        Icons.star_border,
                        color: dGreen,
                        size: 14
                    )
                  ],
                ),
                const SizedBox(width: 8),
                Text(
                    '${hotelData['review']} reviews',
                    style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}