//TODO odds calculator
//odds ro mohasebe mikone

import 'package:bustem2/main.dart';
import 'package:bustem2/oddCalculator/oddsEmulator.dart';
import 'package:bustem2/oddCalculator/winnerHand.dart';

import 'cards.dart';
class odds{

  static List<double> handOddes=[];
  void oddCalculator(List<Cards> cards){


    int n=((cards.length-5)/2).toInt();
    for(int i=0;i<n;i++){
      handOddes.add(100/n);
    }


  }
  double getOdd(int i){
    return handOddes[i];
  }
  void setOdd(int i,double o){
    handOddes[i]=o;
  }
}