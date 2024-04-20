part of 'manu_app_cubit.dart';

@immutable
abstract class ManuAppState {}

 class ManuAppInitial extends ManuAppState {}

class ManuAppMenuOpen extends ManuAppState {}

class ManuAppMenuClosed extends ManuAppState {}