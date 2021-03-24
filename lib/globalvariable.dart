
import 'package:nearest_city_rider/datamodels/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


String serverKey = 'AAAA3czIsqg:APA91bGV5rbt0KvFlfgYQtSoEktKyxj5Kp-Z6y_l2CSupPRT6U5uWz1PDI1y7YVFtPMmzqiGG-oXZ4-MbGazx-sMA5hxdkY0mlGBn1b-tbL6DW1-xtK9WTwp76wuOAg2_WNYCbSXNkVm';

String mapKey = 'AIzaSyB4BCNfrhMHjIw3rtAW5RE1VkCG6py3S94';

final CameraPosition googlePlex = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,
);

FirebaseUser currentFirebaseUser;

User currentUserInfo;
