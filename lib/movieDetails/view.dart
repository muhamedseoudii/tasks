import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../myMovies/model.dart';
import 'model.dart';

class MovieDetailsView extends StatefulWidget {
  final int id;
  final String title;

  const MovieDetailsView({Key? key, required this.id, required this.title})
      : super(key: key);

  @override
  State<MovieDetailsView> createState() => _MovieDetailsViewState();
}

class _MovieDetailsViewState extends State<MovieDetailsView> {
  bool isLoading = false;
  late DetailsModel model;

  getDetailsData() async {
    isLoading = true;
    setState(() {});
    var response = await Dio().get(
        "https://api.themoviedb.org/3/movie/${widget.id}?api_key=2001486a0f63e9e4ef9c4da157ef37cd");
    model = DetailsModel.fromJson(response.data);
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getDetailsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Image.network(model.backdropPath),
                SizedBox(height: 16,),
                ...List.generate(model.genres.length, (index) => Text(model.genres[index].name)),
                SizedBox(height: 16,),
                Text(model.overview),
              ],
            ),
    );
  }
}
