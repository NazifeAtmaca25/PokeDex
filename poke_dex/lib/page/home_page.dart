import 'package:flutter/material.dart';
import 'package:poke_dex/widget/app_title.dart';
import 'package:poke_dex/widget/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // tutmayın  yol verin
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTitle(),
          Expanded(child: PokemonList()),
        ],
      ),
    );
  }
}
