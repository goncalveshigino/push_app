import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Permicoes'),
        actions: [
          IconButton(onPressed: (){
            
          }, 
          icon:const Icon( Icons.settings),
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
      itemBuilder: (context, index){
        return ListTile();
      }
    );
  }
}