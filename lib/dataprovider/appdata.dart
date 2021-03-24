import 'package:nearest_city_rider/datamodels/address.dart';
import 'package:nearest_city_rider/datamodels/history.dart';
import 'package:flutter/cupertino.dart';

class AppData extends ChangeNotifier{

  int tripCount = 0;
  List<String> tripHistoryKeys = [];
  List<History> tripHistory = [];

  Address pickupAddress;

  Address destinationAddress;

  void updatePickupAddress(Address pickup){
    pickupAddress = pickup;
    notifyListeners();
  }

  void updateDestinationAddress (Address destination){
    destinationAddress = destination;
    notifyListeners();
  }

  void updateTripCount(int newTripCount){
    tripCount = newTripCount;
    notifyListeners();
  }

  void updateTripKeys(List<String> newKeys){
    tripHistoryKeys = newKeys;
    notifyListeners();
  }

  void updateTripHistory(History historyItem){
    tripHistory.add(historyItem);
    notifyListeners();
  }
}