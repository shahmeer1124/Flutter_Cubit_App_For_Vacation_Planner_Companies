import 'package:bloc/bloc.dart';
import 'package:travel/cubit/app_cubit_state.dart';
import 'package:travel/model/data_model.dart';
import 'package:travel/services/data_services.dart';

class AppCubits extends Cubit<Cubitstate> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void getdata() async {
    try {
      emit(LoadingState());
      places = await data.getinfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
