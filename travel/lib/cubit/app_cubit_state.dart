import 'package:equatable/equatable.dart';
import 'package:travel/model/data_model.dart';

abstract class Cubitstate extends Equatable {}

class InitialState extends Cubitstate {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WelcomeState extends Cubitstate {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends Cubitstate {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends Cubitstate {
  LoadedState(this.places);
  final List<DataModel> places;

  @override
  // TODO: implement props
  List<Object> get props => [places];
}
class DetailState extends Cubitstate {
  DetailState(this.place);
  final DataModel place;

  @override
  // TODO: implement props
  List<Object> get props => [place];
}
