import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_app/presentation/bloc/notifications/notifications_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context
            .select((NotificationsBloc bloc) => Text('${bloc.state.status}')),
        actions: [
          IconButton(
            onPressed: () {
              context.read<NotificationsBloc>()
                  .requestPermission();
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView();

  @override
  State<_HomeView> createState() => __HomeViewState();
}

class __HomeViewState extends State<_HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 0,
        itemBuilder: (context, index) {
          return ListTile();
        });
  }
}
