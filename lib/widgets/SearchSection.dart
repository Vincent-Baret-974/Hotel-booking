import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const dGreen = Color(0xFF54D3C2);

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 5,
                              offset: const Offset(0, 3)
                          )
                        ]
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'La Réunion',
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none
                      ),
                    ),
                  )
              ),
              const SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(0, 4)
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: dGreen
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Choose date',
                        style: GoogleFonts.nunito(color: Colors.grey, fontSize: 15)
                    ),
                    const SizedBox(height: 8),
                    Text(
                        '12 Dec - 22 Dec',
                        style: GoogleFonts.nunito(color: Colors.black, fontSize: 17)
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Number of Rooms',
                        style: GoogleFonts.nunito(color: Colors.grey, fontSize: 15)
                    ),
                    const SizedBox(height: 8),
                    Text(
                        '1 Room - 2 Adults',
                        style: GoogleFonts.nunito(color: Colors.black, fontSize: 17)
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}