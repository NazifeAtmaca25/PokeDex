import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/constant/ui_helper.dart';
import 'package:poke_dex/model/pokemon_model.dart';
import 'package:poke_dex/widget/pokemon_type_name.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: UIHelper.getIconPadding(),
            child: IconButton(
              iconSize: 24.r,
                onPressed: (){
              Navigator.of(context).pop(context);
            }, icon: Icon(Icons.arrow_back_ios)),
          ),
          PokemonTypeName(pokemon: pokemon)
        ],
      )),
    );
  }
}
