import 'package:amoor1/myMovies/cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/logic/helper_methods.dart';
import '../movieDetails/view.dart';
import 'model.dart';

class MyMoviesView extends StatelessWidget {
  MyMoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MoviesCubit cubit = BlocProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Movies 4 You"),
        actions: [
          GestureDetector(
              child: cubit.isGrid ? Icon(Icons.grid_on) : Icon(Icons.grid_off),
              onTap: cubit.toggleDesign)
        ],
      ),
      body: BlocBuilder(
        bloc: cubit,
        builder: (context, state) {
          return cubit.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : RefreshIndicator(
                  onRefresh: cubit.refresh,
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: cubit.isGrid ? 2 : 1,
                        childAspectRatio: 180 / 290),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: GestureDetector(
                          onTap: () {
                            navigateTo(
                                context,
                                MovieDetailsView(
                                  id: cubit.model.list[index].id,
                                  title: cubit.model.list[index].title,
                                ));
                          },
                          child: Column(
                            children: [
                              Expanded(
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.network(
                                      cubit.model.list[index].backdropPath,
                                      fit: BoxFit.cover,
                                      loadingBuilder:
                                          (context, child, loadingProgress) {
                                        if (loadingProgress == null)
                                          return child;
                                        return Center(
                                          child: CircularProgressIndicator(
                                            value: loadingProgress
                                                        .expectedTotalBytes !=
                                                    null
                                                ? loadingProgress
                                                        .cumulativeBytesLoaded /
                                                    loadingProgress
                                                        .expectedTotalBytes!
                                                : null,
                                          ),
                                        );
                                      },
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional.topStart,
                                      child: Container(
                                        margin: EdgeInsetsDirectional.only(
                                            start: 5, top: 10),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 3),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Text(
                                                cubit.model.list[index]
                                                    .voteAverage
                                                    .toString(),
                                                style: TextStyle(
                                                    color: Colors.orange)),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(cubit.model.list[index].title),
                            ],
                          ),
                        ),
                      ),
                    ),
                    itemCount: cubit.model.list.length,
                  ),
                );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: cubit.isLoading
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
                      onPressed: cubit.page > 1
                          ? () {
                              cubit.page--;
                              cubit.getMovies();
                            }
                          : null,
                      icon: Icon(Icons.navigate_before)),
                  SizedBox(width: 4),
                  Text("${cubit.page}",
                      style: TextStyle(fontSize: 20, color: Colors.orange)),
                  SizedBox(width: 4),
                  IconButton(
                      onPressed: cubit.page < 500
                          ? () {
                              cubit.page++;
                              cubit.getMovies();
                            }
                          : null,
                      icon: Icon(Icons.navigate_next))
                ],
              ),
            ),
    );
  }
}
