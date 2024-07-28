part of 'home_bloc.dart';

abstract class HomeState {}

class SliderItemChanged extends HomeState {
  final Book book;
  SliderItemChanged(this.book);
}
