import 'package:bloc/bloc.dart';
import "../../../core/entities/book.dart";

part 'home_state.dart';

part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState?> {

  HomeBloc() : super(null) {
    on<HomeEvent>(
      (event, emit) {
        if (event is ChangeSliderItem) {
          emit(SliderItemChanged(event.book));
        }
      },
    );
  }
}
