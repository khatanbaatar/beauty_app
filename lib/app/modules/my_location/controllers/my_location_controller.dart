import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyLocationController extends GetxController {
  GoogleMapController? mapController;
  DraggableScrollableController dssController = DraggableScrollableController();
  BitmapDescriptor? customIcon;

  @override
  void onInit() {
    super.onInit();
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration(size: Size(12, 12)), 'assets/avatar.png')
        .then((d) {
      customIcon = d;
      update();
    });
  }

  Future<void> goTo(LatLng _latLng) async {
    LatLng latLng = LatLng(_latLng.latitude - 0.004, _latLng.longitude);
    final CameraPosition target = CameraPosition(
      // bearing: 192.8334901395799,
      target: latLng,
      // tilt: 59.440717697143555,
      zoom: 15.4746,
    );
    // final GoogleMapController controller = await mapController.future;
    await mapController?.animateCamera(CameraUpdate.newCameraPosition(target));
    update();
  }
}
