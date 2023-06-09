import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_main/screens/threedots_tile.dart';

class musicTiles extends StatelessWidget {
  String name;
  String artist;
  int duration;
   musicTiles({
    super.key,required this.name,required this.artist,required this.duration
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(           
        height: MediaQuery.of(context).size.height * 0.125,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft ,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 173, 173, 173),Color(0xFFc3c3c3),Color(0xFFDBDBDB),Color(0xFFc3c3c3)],
            stops: [0.3,0.6,0.7,0.9]
            ),
            borderRadius: BorderRadius.circular(10)
            ),
           child: Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 15),
                 child: Container(
                   height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * .2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage('https://images.macrumors.com/t/hi1_a2IdFGRGMsJ0x31SdD_IcRk=/1600x/article-new/2018/05/apple-music-note.jpg'),fit: BoxFit.cover)),
                  
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left : 12),
                 child: Container(
                   width: MediaQuery.of(context).size.width * .46,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(name,style: GoogleFonts.crimsonPro(fontWeight: FontWeight.bold,fontSize: 18),overflow: TextOverflow.ellipsis,),
                      Row(
                        
                        children: [
                            SizedBox(
                              width:MediaQuery.of(context).size.width * .32,
                              child: Text(artist,style: GoogleFonts.crimsonPro(fontWeight: FontWeight.bold,fontSize: 14),overflow: TextOverflow.ellipsis)),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 6,left: 10,right: 10),
                            //   child: CircleAvatar(radius: 2,backgroundColor: Colors.black,),
                            // ),
                            // Text('$duration',style: GoogleFonts.crimsonPro(fontWeight: FontWeight.bold,fontSize: 14),overflow: TextOverflow.ellipsis,)
                        ],
                      )
                     
                    ],
                  ),
                 ),
                 
               ),
               SizedBox(width: MediaQuery.of(context).size.width * .09,),
               Row(
                 children: [
                   GestureDetector(
                         onTap: () {
                           
                         },
                         child: Icon(Icons.favorite_rounded)),
                       SizedBox(width: 10,),
                       GestureDetector(
                         onTap: () {
                           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                             return ThreeDotsTile();
                           },));
                         },
                         child: Icon(Icons.more_vert))
                 ],
               )
             ],
           ),
      ),
    );
  }
}
