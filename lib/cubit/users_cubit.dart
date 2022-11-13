import 'package:cubit_example/cubit/users_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersInitial()) {
    getUsers();
  }

  Future<void> getUsers() async {
    try {
      emit(UsersLoading());
      await Future.delayed(const Duration(seconds: 3));
      final res = await Future.value(["Bir", "ikki", "uch"]);
      emit(UsersComplete(res));
    } catch (e) {
      emit(UsersError("Malumot yo'q"));
    }
  }
}
