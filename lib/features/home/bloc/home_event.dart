part of 'home_bloc.dart';

abstract class HomeEvent {}

class ChangeSliderItem extends HomeEvent {
  final Book book;
  ChangeSliderItem(this.book);
}
