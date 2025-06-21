import 'package:flutter/material.dart';

class MovieCategory extends StatefulWidget {
  const MovieCategory({super.key});

  @override
  State<MovieCategory> createState() => _MovieCategoryState();
}

class _MovieCategoryState extends State<MovieCategory> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> allMovies = [
      {
        'title': 'RRR',
        'imageUrl': 'https://upload.wikimedia.org/wikipedia/en/thumb/7/7b/RRR_Album.jpeg/250px-RRR_Album.jpeg',
        'rating': '4.7',
        'genre': 'Action | Drama',
      },
      {
        'title': 'Pushpa',
        'imageUrl': 'https://images.moneycontrol.com/static-mcnews/2024/02/Pushpa-The-Rise-1-770x433.jpg?impolicy=website&width=770&height=431',
        'rating': '4.5',
        'genre': 'Action | Thriller',
      },
    
      {
        'title': 'Pathaannn',
        'imageUrl': 'https://kashmirmonitor-s01.sgp1.cdn.digitaloceanspaces.com/wp-content/uploads/2023/05/P.jpg',
        'rating': '4.3',
        'genre': 'Action | Spy',
      },
      {
        'title': 'Inception',
        'imageUrl': 'https://m.media-amazon.com/images/I/71thFiIUSpL._UF894,1000_QL80_.jpg',
        'rating': '4.8',
        'genre': 'Sci-Fi | Thriller',
      },
    
      {
        'title': 'Vikram',
        'imageUrl': 'https://assets.thehansindia.com/h-upload/2022/06/03/1295898-vikram-movie.webp',
        'rating': '4.6',
        'genre': 'Action | Thriller',
      },
   

    
      {
        'title': 'Bahubali (Malayalam)',
        'imageUrl': 'https://i.ytimg.com/vi/DcBgec9Ugd0/maxresdefault.jpg',
        'rating': '4.7',
        'genre': 'Epic | Action',
      },
      {
        'title': 'Joe',
        'imageUrl': 'https://upload.wikimedia.org/wikipedia/en/thumb/9/96/Joe_%282023_film%29.jpg/250px-Joe_%282023_film%29.jpg',
        'rating': '4.6',
        'genre': 'Romance',
      },
      {
        'title': 'Julayi',
        'imageUrl': 'https://assets-in.bmscdn.com/discovery-catalog/events/et00370942-wlwqftxzjr-landscape.jpg',
        'rating': '4.6',
        'genre': 'Action | Thriller',
      },
      {
        'title': 'MAD',
        'imageUrl': 'https://assets-in.bmscdn.com/discovery-catalog/events/et00370942-wlwqftxzjr-landscape.jpg',
        'rating': '4.6',
        'genre': 'Action | Comedy',
      },
      {
        'title': 'Spider Man-2',
        'imageUrl': 'https://m.media-amazon.com/images/I/81Kc9SmNcrL._AC_UF1000,1000_QL80_.jpg',
        'rating': '4.6',
        'genre': 'Action | Thriller | Romance',
      },

    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("All Movies",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: allMovies.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.9,
          ), 
          itemBuilder: (context,index){
            final movie = allMovies[index];
            return Card(
              elevation: 8,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Image.network(movie['imageUrl']!,fit: BoxFit.cover,
                            width: double.infinity,height: 150,),
                        ),
                        Text(movie['title']!,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        Text(movie['genre']!,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                      ],
                    ),
            );
          }
        ),
      ),
    );
  }
}