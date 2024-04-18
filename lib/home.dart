import 'package:flutter/material.dart';
import 'package:spotify_clone/song.dart';

import 'album_card.dart';
import 'album_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.1),
                  Colors.black.withOpacity(0),
                ]
              )
            ),
          ),
          SingleChildScrollView(
            
            physics: BouncingScrollPhysics(),

            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recently Played",style: Theme.of(context).textTheme.headline6,),
                      Row(
                        children: [
                          Icon(Icons.history),
                          SizedBox(width: 20,),
                          Icon(Icons.settings),
                        ],
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                     AlbumCard(
                       label: "Top 20",
                       image: AssetImage("assets/album1.jpg"),
                       onTap: (){

                         Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumView()));
                       },),
                      SizedBox(width: 16,),
                      AlbumCard(
                        label: "True Love",
                        image: AssetImage("assets/album2.jpg"),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumView()));
                        },
                      ),
                      SizedBox(width: 16,),
                      AlbumCard(
                        label: "Trending",
                        image: AssetImage("assets/album3.jpg"),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumView()));
                        },),
                      SizedBox(width: 16,),
                      AlbumCard(
                        label: "All time Fav",
                        image: AssetImage("assets/album4.jpg"),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumView()));
                        },),
                      SizedBox(width: 16,),
                      AlbumCard(
                        label: "Glorious",
                        image: AssetImage("assets/album5.jpg"),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumView()));
                        },),
                    ],
                  ),
                ),
                  SizedBox(width: 32,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Good evening",
                        style: Theme.of(context).textTheme.headline6,),
                        SizedBox(height: 16,),
                        Row(
                          children: [
                            RowAlbumCard(AssetImage("assets/top50.jpg"), "Top 50 - Global"),
                            SizedBox(width: 16,),
                            RowAlbumCard(AssetImage("assets/album6.jpg"), "Pop Remix"),
                          ],
                        ),
                   SizedBox(height: 16,),
                        Row(
                          children: [
                            RowAlbumCard(AssetImage("assets/album7.jpg"), " Honey Singh"),
                            SizedBox(width: 16,),
                            RowAlbumCard(AssetImage("assets/album8.jpg"), "Romantic"),
                          ],
                        ),
                        SizedBox(height: 16,),
                        Row(
                          children: [
                            RowAlbumCard(AssetImage("assets/album9.jpg"), "Top 50 - USA"),
                            SizedBox(width: 16,),
                            RowAlbumCard(AssetImage("assets/album10.jpg"), "Party Mode"),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Based on your recent listening",
                        style: Theme.of(context).textTheme.headline6,),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            SongCard(image: AssetImage("assets/album11.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album12.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album3.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album7.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album8.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album10.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album6.jpg"),),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 16,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Recommended Radio",
                          style: Theme.of(context).textTheme.headline6,),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            SongCard(image: AssetImage("assets/album1.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album2.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album3.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album6.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album4.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album10.jpg"),),
                            SizedBox(width: 16,),
                            SongCard(image: AssetImage("assets/album6.jpg"),),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 16,),
              ],),

            ),
          )
        ],
      ),
    );
  }
}class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard(
     this.image, this.label
      ) ;

  @override
  Widget build(BuildContext context) {
    return  
        Expanded(
          flex: 1,
          child: Container(

            decoration:BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(4),
            ),
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: [
                Image(image: image,
                  height: 48,
                  width: 48,
                  fit: BoxFit.cover,),
                SizedBox(width: 8,),
                Text(label),
              ],
            ),
          ),
        );
      
    
  }
}




