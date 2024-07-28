part of 'app_bloc.dart';

abstract class AppState {
  final WhoCalledBloc? whoCalledBloc;

  AppState(this.whoCalledBloc);
}

class AppDataInitial extends AppState {
  AppDataInitial(super.whoCalledBloc);
}

class AppDataLoading extends AppState {
  AppDataLoading(super.whoCalledBloc);
}

class AppDataCompleted extends AppState {
  final Object appModel;

  AppDataCompleted(
    this.appModel,
    WhoCalledBloc whoCalledBloc,
  ) : super(whoCalledBloc);
}

class AppDataError extends AppState {
  final String errorMessage;

  AppDataError(super.whoCalledBloc, this.errorMessage);
}

class WidgetReloaded extends AppState {
  WidgetReloaded(super.whoCalledBloc);
}

