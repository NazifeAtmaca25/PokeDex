import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/constant/constants.dart';
import 'package:poke_dex/constant/ui_helper.dart';
import 'package:poke_dex/model/pokemon_model.dart';
import 'package:poke_dex/page/detail_page.dart';
import 'package:poke_dex/widget/pokemon_image_and_ball.dart';

class PokemonItem extends StatelessWidget {
  final PokemonModel pokemon;
  PokemonItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(pokemon: pokemon,)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(15.w),
        ),
        color: UIHelper.getColorFromType(pokemon.type![0]),
        elevation: 3,
        shadowColor: Colors.white,

        child:Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemon.name ?? "Pokemon Karakteri",style: Constants.getPokemonNameTextStyle(),),
              Chip(label: Text(pokemon.type![0],style: Constants.getTypeChipTextStyle(),)),
              Expanded(child: PokemonImageAndBall(pokemon: pokemon))
            ],
          ),
        ),

      ),
    );
  }
}
