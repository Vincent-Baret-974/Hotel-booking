import 'package:flutter/material.dart';

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
          )
        ],
      ),
    );
  }

}