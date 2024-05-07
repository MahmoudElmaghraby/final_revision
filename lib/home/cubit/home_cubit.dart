import 'package:dio/dio.dart';
import 'package:final_revision/home/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitailState());

  static HomeCubit get(context) => BlocProvider.of(context);

  Response? data;
  IconData iconData = Icons.favorite_border;
  bool isFavoriteClicked = false;

  getData() {
    Dio dio = Dio();
    dio
        .get('https://www.themealdb.com/api/json/v1/1/categories.php')
        .then((value) {
      data = value;
      emit(HomeGetDataState());
    });
  }

  void changeFavoriteState() {
    if (isFavoriteClicked) {
      iconData = Icons.favorite;
      emit(HomeChangFavoritState());
    } else {
      iconData = Icons.favorite_border;
      emit(HomeChangFavoritState());
    }
  }

  void favoriteCliked() {
    isFavoriteClicked = !isFavoriteClicked;
    emit(HomeChangFavoritState());
  }
}
