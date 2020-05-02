import 'package:flutter/material.dart';

class StaticValues{

  static bool isClick = false;
  bool getIsClick(){
    return isClick;
  }
  void setIsClick(){
    isClick=!isClick;
  }


  static int playerNo=2;
  int getPlayerNo(){
    return playerNo;
  }
  void setPlayerNo(int p){
    playerNo=p;
  }


  static String paseName='start';
  void setPhaseName(String name){
    paseName=name;
  }
  String getPaseName(){
    return paseName;
  }



  static double money=5000.0;

  void setMoney(double m){
    money=m;
  }
  double getMoney (){
    return money;
  }



  static int selectNo;

  void setSelect(int i){
    selectNo=i;
  }
  int getSelect(){
    return selectNo;
  }



  static List<int> wagers=[];

  void createWager(int n){
    wagers.clear();
    for(int i=0;i<n;i++){
      wagers.add(0);
    }
  }
  int getWager(int n){
    return wagers[n];
  }
  void setWager(int i,int wager){
    wagers[i]=wager;
  }
  List<int> getAllWagers(){
    return wagers;
  }




  static List<double> ranges=[];
  void createRange(int n){
    ranges.clear();
    for(int i=0;i<n;i++){

      ranges.add(0);
    }
  }
  double getMin(int n){
    return ranges[n];
  }
  void setMin(int i,double range){
    ranges[i]=range;
  }
  List<double> getAllMin(){
    return ranges;
  }




  static MediaQueryData queryData;
  static double width;
  static double height;

  void init(BuildContext context){
    queryData = MediaQuery.of(context);
    width = queryData.size.width;
    height = queryData.size.height;
  }
}