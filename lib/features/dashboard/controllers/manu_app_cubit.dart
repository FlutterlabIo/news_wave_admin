import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'manu_app_state.dart';

enum MenuState { opened, closed }

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuState.closed);

  void openMenu() => emit(MenuState.opened);

  void closeMenu() => emit(MenuState.closed);
}
