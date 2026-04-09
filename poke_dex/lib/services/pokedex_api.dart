import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:poke_dex/model/pokemon_model.dart';

class PokedexApi {
  static const String _url="https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  static Future<List<PokemonModel>> getData() async{
    List<PokemonModel> _pokemonData=[];
    try{
      var response=await Dio().get(_url);
      var pokeList=jsonDecode(response.data);
      if(response.statusCode==200){
        _pokemonData=(pokeList['pokemon'] as List).map((element)=>PokemonModel.fromJson(element)).toList();
      }
      debugPrint(_pokemonData.length.toString());
      return _pokemonData;
    }on DioException catch(e){
      return Future.error(e.message.toString());
    }
  }
}