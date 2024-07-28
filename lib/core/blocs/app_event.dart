part of 'app_bloc.dart';

abstract class AppEvent {}

class InitData extends AppEvent {
  final WhoCalledBloc whoCalledBloc;

  InitData(this.whoCalledBloc);
}

class LoadData extends AppEvent {
  final Function callApiFunction;
  final WhoCalledBloc whoCalledBloc;

  LoadData({
    required this.callApiFunction,
    required this.whoCalledBloc,
  });
}

class SendData extends AppEvent {}

class ReloadWidget extends AppEvent {
  final WhoCalledBloc whoCalledBloc;

  ReloadWidget(this.whoCalledBloc);
}