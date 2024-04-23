import 'package:flutter/material.dart';
import 'package:spotify_clone/album_view.dart';
class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final Function func;
  const AlbumCard({
    required this.image,required  this.label,required this.func}) ;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
     onTap: (){
      func();
     },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image:image ,width: 120,height: 120,fit:BoxFit.cover ,),
          SizedBox(height: 10,),
          Text(label),
        ],
      ),
    );
  }
}