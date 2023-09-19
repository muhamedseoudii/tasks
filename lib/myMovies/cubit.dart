import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model.dart';
import 'states.dart';

class MoviesCubit extends Cubit<MoviesStates>{

  MoviesCubit() : super(MoviesStates()){
    getMovies();
  }


  bool isGrid = false;
  bool isLoading = false;
  late MovieData model;

  int page = 1;

  Future<void> getMovies() async {
    isLoading = true;
    // setState(() {});
    emit(MoviesLoadingState());
   try{
     var response = await Dio().get(
         "https://api.themoviedb.org/3/discover/movie?api_key=2001486a0f63e9e4ef9c4da157ef37cd&page=$page");

     model = MovieData.fromJson(response.data);
     isLoading = false;
     // setState(() {});
     emit(MoviesSuccessState());
   }
   catch (ex){
     emit(MoviesFailedState());
   }
  }

  toggleDesign(){
    isGrid = !isGrid;
    // setState(() {});
    emit(ToggleState());
  }

  Future<void> refresh() async {
  await Future.delayed(Duration(seconds: 1));
  await getMovies();
}

}