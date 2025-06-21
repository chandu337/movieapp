import 'package:flutter/material.dart';
import 'package:ottapp/screens/login_screen.dart';
import 'package:ottapp/widgets/all_movies.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: Image.network(
                "https://yt3.googleusercontent.com/ytc/AIdro_kmdAl1l11SDP0ncAzoTmrsVGsbbyd5ioxP9CckxOlU88U=s900-c-k-c0x00ffffff-no-rj",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Text(
              "FilmSpot",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 110,),
            
            ElevatedButton(onPressed: () async{
              final prefs = await SharedPreferences.getInstance();
            await prefs.setBool('isLoggedIn', false);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));

            }, child: Text("Back"))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Telugu Movies",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: teluguMovies.length,
                    itemBuilder: (context, index) {
                      final telMovie = teluguMovies[index];
                      return Container(
                        width: 260,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: Card(
                          color: Colors.grey[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.vertical(top: Radius.circular(12)),
                                child: Image.network(
                                  // telMovie['imageUrl']!,
                                  "https://upload.wikimedia.org/wikipedia/en/d/d7/RRR_Poster.jpg",
                                  height: 150,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      telMovie['title']!,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "⭐ ${telMovie['rating']}",
                                      style: TextStyle(color: Colors.orangeAccent),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Hindi Movies",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: hindiMovies.length,
                    itemBuilder: (context, index) {
                      final hinMovie = hindiMovies[index];
                      return Container(
                        width: 260,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: Card(
                          color: Colors.grey[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.vertical(top: Radius.circular(12)),
                                child: Image.network(
                                  hinMovie['imageUrl']!,
                                  height: 150,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      hinMovie['title']!,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "⭐ ${hinMovie['rating']}",
                                      style: TextStyle(color: Colors.orangeAccent),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Tamil Movies",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: tamilMovies.length,
                    itemBuilder: (context, index) {
                      final tamMovie = tamilMovies[index];
                      return Container(
                        width: 260,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        child: Card(
                          color: Colors.grey[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.vertical(top: Radius.circular(12)),
                                child: Image.network(
                                  tamMovie['imageUrl']!,
                                  height: 150,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      tamMovie['title']!,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "⭐ ${tamMovie['rating']}",
                                      style: TextStyle(color: Colors.orangeAccent),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                "Other Movies",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: otherMovies.length,
                  itemBuilder: (context, index) {
                    final otherMovie = otherMovies[index];
                    return Container(
                      width: 260,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Card(
                        color: Colors.grey[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.vertical(top: Radius.circular(12)),
                              child: Image.network(
                                otherMovie['imageUrl']!,
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    otherMovie['title']!,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "⭐ ${otherMovie['rating']}",
                                    style: TextStyle(color: Colors.orangeAccent),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
