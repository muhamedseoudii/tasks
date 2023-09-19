import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model.dart';

part 'movieItem.dart';

class MyMoviesView2 extends StatefulWidget {
  const MyMoviesView2({Key? key}) : super(key: key);

  @override
  State<MyMoviesView2> createState() => _MyMoviesViewState();
}

class _MyMoviesViewState extends State<MyMoviesView2> {
  bool isGrid = false;
  bool isLoading = false;
  List<MovieModel> list = [];

  int page = 1;

  Future<void> getMovies() async {
    isLoading = true;
    setState(() {});
    var response = await Dio().get(
        "https://api.themoviedb.org/3/discover/movie?api_key=2001486a0f63e9e4ef9c4da157ef37cd&page=$page");
    var model = MovieData.fromJson(response.data);
    list.addAll(model.list);
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    getMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies 4 You"),
        actions: [
          GestureDetector(
            child: isGrid ? Icon(Icons.grid_on) : Icon(Icons.grid_off),
            onTap: () {
              isGrid = !isGrid;
              setState(() {});
            },
          )
        ],
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              onRefresh: () async {
                await Future.delayed(Duration(seconds: 1));
                await getMovies();
              },
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => MovieItem(model: list[index]),
                  separatorBuilder: (context, index) =>
                       SizedBox(height: 10),
                  itemCount: list.length)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: isLoading
          ? SizedBox.shrink()
          : Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: page > 1
                          ? () {
                              page--;
                              getMovies();
                            }
                          : null,
                      icon: Icon(Icons.navigate_before)),
                  SizedBox(width: 4),
                  Text("$page",
                      style: TextStyle(fontSize: 20, color: Colors.orange)),
                  SizedBox(width: 4),
                  IconButton(
                      onPressed: page < 500
                          ? () {
                              page++;
                              getMovies();
                            }
                          : null,
                      icon: Icon(Icons.navigate_next))
                ],
              ),
            ),
    );
  }
}
