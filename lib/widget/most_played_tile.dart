 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container mostPlayedTile() {
    return Container(
                    height: 80,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                       
                        CircleAvatar(
                          backgroundImage: NetworkImage("https://i.pinimg.com/170x/26/f1/ff/26f1ff753a4c2fc8454368b5679533d1.jpg"),
                          radius: 30,
                          ),
                        Container(
                          width: 215,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bad guy",style: GoogleFonts.crimsonPro(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800)),
                                Row(
                                  children: [
                                    Text("Billie eilish",style: GoogleFonts.crimsonPro(color: Color.fromARGB(255, 221, 221, 221),fontSize: 14,fontWeight: FontWeight.w500)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
                                      child: CircleAvatar(radius: 3,backgroundColor:  Color.fromARGB(255, 221, 221, 221),),
                                    ),
                                    Text("2:45",style: GoogleFonts.crimsonPro(color: Color.fromARGB(255, 221, 221, 221),fontSize: 16,fontWeight: FontWeight.w500))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                       Text("123 Plays",style: GoogleFonts.crimsonPro(fontSize: 18,color: Color.fromARGB(255, 221, 221, 221)),)
                      ],
                    ),
                   );
  }