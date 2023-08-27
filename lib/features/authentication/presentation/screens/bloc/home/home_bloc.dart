import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarthome/features/authentication/presentation/screens/sign_up.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<NavigateToSignUpEvent>(navigateToSignUpEvent);
  }

  FutureOr<void> navigateToSignUpEvent(NavigateToSignUpEvent event, Emitter<HomeState> emit) {
  }
}
