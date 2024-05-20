import 'package:flutter/material.dart';
import 'package:santos0415/util/vet_tile.dart'; // ignore: must_be_immutable

class DonutTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Pro Plan Adulto", "250", Colors.lightBlue, "lib/images/propAdulto.png"],
    ["Pelota", "60", Colors.blueAccent, "lib/images/juguete.png"],
    ["Pro Plan Gato", "230", Colors.redAccent, "lib/images/proplanGato.png"],
    ["Vitaminas", "80", Colors.yellowAccent, "lib/images/vitaminas.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
