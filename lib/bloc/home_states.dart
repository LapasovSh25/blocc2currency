

import 'package:bloc/bloc.dart';
import 'package:bloccc2currency/model/currency_model.dart';
import 'package:bloccc2currency/service/currency_service.dart';

part 'home_cubit.dart';

abstract class HomeState {
  HomeState();
}

class HomeInitialState extends HomeState {
  HomeInitialState();
}

class HomeLoadingState extends HomeState {
  HomeLoadingState();
}

class HomeErrorState extends HomeState {
  String error;
  HomeErrorState(this.error);
}

class HomeComplateState extends HomeState {
  List<CurrencyModel> currency;
  HomeComplateState(this.currency);
}
