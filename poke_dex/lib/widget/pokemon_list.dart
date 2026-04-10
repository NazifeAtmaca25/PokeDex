import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/widget/pokemon_item.dart';

import '../model/pokemon_model.dart';
import '../services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> pokeData;

  @override
  void initState() {
    super.initState();
    pokeData = PokedexApi.getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: pokeData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _pokeList = snapshot.data!;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ScreenUtil().orientation==Orientation.portrait?2:3),
            itemCount: _pokeList.length,
            itemBuilder: (context, index) {
              var poke = _pokeList[index];
              return PokemonItem(pokemon: poke);
            }, 
          );
        } else if (snapshot.hasError) {
          return const Center(child: Text("Hata verdi"));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
