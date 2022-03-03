import 'package:flutter/material.dart';
import 'package:marvel_heroes/widgets/card_movie.widget.dart';

class MovieList extends StatelessWidget {
  final List<String> movies;
  const MovieList({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      margin: const EdgeInsets.only(left: 24),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return CardMovieWidget(
            imagePath: movies[index],
          );
        },
      ),
    );
  }
}
