// ignore_for_file: prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:adoptme/components/constants.dart';
import 'package:adoptme/components/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class ListPetCard extends StatefulWidget {
  final String petName, petRace, petSex, petAge, petSpecies;
  final String petProfilePic;
  final String petColor;
  final double petLocation;
  final bool petFavorite;

  ListPetCard({
    Key? key,
    required this.petName,
    required this.petSpecies,
    required this.petRace,
    required this.petSex,
    required this.petAge,
    required this.petLocation,
    required this.petFavorite,
    required this.petProfilePic,
    required this.petColor,
  }) : super(key: key);

  @override
  State<ListPetCard> createState() => _ListPetCardState();
}

/*  Inicialmente a ideia era usar um ListTile, mas descobri que o ListTile tem um
/   defeito bem grande, que é o de limitar o tamanho do leading, aí a foto do card
/   nunca estaria no tamanho correto. A solução foi criar um card customizado. 
*/

class _ListPetCardState extends State<ListPetCard> {
  //controle de qual ícone será recebido de acordo com o petFavorite
  //petFavorite = true se o pet for favoritado
  late bool favorite = false;
  late var _heart;
  late var _heartColor;

  getData(favorite) {
    if (widget.petFavorite) {
      _heart = CustomIcons.favorite;
      _heartColor = cPrimaryColor;
    } else {
      _heart = CustomIcons.favorite_border;
      _heartColor = cGray2;
    }
  }

  @override
  void initState() {
    getData(widget.petFavorite);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //continuação do controle acima

    //container que determina o tamanho do card
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.40,
        height: MediaQuery.of(context).size.height * 0.165,

        //Card
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: cSecondaryColor,
          elevation: 0,

          //linha do card, os itens dela estão separados em 3 widgets
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Stack com a foto do pet e o fundo

                //fundo da foto
                Container(
                  width: MediaQuery.of(context).size.width * 0.24,
                  height: MediaQuery.of(context).size.height * 0.16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Color(int.parse(widget.petColor)),
                  ),

                  //foto do pet
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(22)),
                    child: Image.asset(widget.petProfilePic.toString()),
                  ),
                ),

                const SizedBox(
                  width: 10,
                ),
                //Textos
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        widget.petName,
                        overflow: TextOverflow.ellipsis,
                        style: cTitleStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child: Text(
                        widget.petRace,
                        overflow: TextOverflow.ellipsis,
                        style: cSubtitleStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child: Text(
                        "${widget.petSex} , ${widget.petAge}",
                        overflow: TextOverflow.ellipsis,
                        style: cBaseTextStyle,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
                        child: Row(
                          children: [
                            const Icon(CustomIcons.location,
                                size: 18, color: cPrimaryColor),
                            Text(
                              "${widget.petLocation} kms away",
                              overflow: TextOverflow.ellipsis,
                              style: cBaseTextStyle,
                            ),
                          ],
                        )),
                  ],
                ),

                const SizedBox(
                  width: 50,
                ),

                //Ícone de Coração
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    _heart,
                    color: _heartColor,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
