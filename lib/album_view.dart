import 'package:flutter/material.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.pink,
        ),
        SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(1),
                      ])),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.5),
                            offset: Offset(0,20),
                            blurRadius: 32,
                            spreadRadius: 16,
                          )
                        ]),
                        child: Image(
                          image: AssetImage("assets/album1.jpg"),
                          width: 250,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Full of great music and dance performances, Bollywood movies will always help you forget about everything and will bring a smile to your face! You can feed your Bollywood fever with my list of the 20 Best Bollywood Hindi movies! ',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            SizedBox(height: 16,),
                            Row(
                              children: [Image(image:AssetImage('assets/spotify.png'),width: 48,height: 48,),
                              Text('Spotify'),
                             ],
                            ),

                            Text("1,888,132 likes 5h 3m",
                              style: Theme.of(context).textTheme.caption,),

                            Stack(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.favorite),
                                    SizedBox(width: 16,),
                                    Icon(Icons.more_horiz),
                                  ],
                                ),

                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  height: 300,
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
