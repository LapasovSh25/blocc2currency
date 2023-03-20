part of 'home_states.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState()) {
    getCurrency();
  }
  
  CurrencyService currencyService = CurrencyService();

  Future<void> getCurrency() async {
    emit(HomeLoadingState());
    await currencyService.getCurrency().then((dynamic response) {
      if (response is List<CurrencyModel>) {
        emit(HomeComplateState(response));
      } else {
        emit(HomeErrorState(response));
      }
    });
  }
}
