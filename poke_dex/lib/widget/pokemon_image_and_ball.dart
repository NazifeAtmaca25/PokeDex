import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/constant/constants.dart';
import 'package:poke_dex/constant/ui_helper.dart';
import 'package:poke_dex/model/pokemon_model.dart';

class PokemonImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  PokemonImageAndBall({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    debugPrint(pokemon.img);
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
            child: Image.asset(Constants.image,fit: BoxFit.fitHeight, height: UIHelper.calculatePokeImgAndBall(),width: UIHelper.calculatePokeImgAndBall(),)),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(imageUrl: pokemon.img ?? "",
          fit: BoxFit.fitHeight,
          placeholder: (context, url) => CircularProgressIndicator(color: Colors.black45,),
            width: UIHelper.calculatePokeImgAndBall(),
            height: UIHelper.calculatePokeImgAndBall(),
          ),
        )
      ],
    );
  }
}
