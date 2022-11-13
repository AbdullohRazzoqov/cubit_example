import 'package:cubit_example/cubit/users_cubit.dart';
import 'package:cubit_example/cubit/users_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersView extends StatefulWidget {
  const UsersView({super.key});

  @override
  State<UsersView> createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UsersCubit(),
      child: myScaffold(),
    );
  }

  Scaffold myScaffold() {
    return Scaffold(
      body: BlocConsumer<UsersCubit,UsersState>(
          builder: (context, state) {
            if (state is UsersInitial) {
              return const Center(
                child: Text("Initial..."),
              );
            } else if (state is UsersLoading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (state is UsersComplete) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Text(state.response[index]);
                },
                itemCount: state.response.length,
              );
            } else {
              return const Center(
                child: Text("ERROR"),
              );
            }
          },
          listener: (context, style) {}),
      appBar: AppBar(
          title: const Text(
        "Users Page",
        style: TextStyle(color: Colors.green),
      )),
    );
  }
}
