part of 'global_cubit.dart';

@immutable
abstract class GlobalState {}

class GlobalInitial extends GlobalState {}

class GlobalLodingState extends GlobalState {}


class GlobalSuccessState extends GlobalState {}

class GlobalErrorState extends GlobalState {}


