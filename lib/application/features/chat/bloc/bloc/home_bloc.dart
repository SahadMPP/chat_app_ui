// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<_deskTopDrower>((event, emit) {
     if (state.isExpanded) {
       emit(state.copyWith(isExpanded: false));
     } else {
       emit(state.copyWith(isExpanded: true));
     }
    });
  }
}
