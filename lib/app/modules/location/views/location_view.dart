import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/salon_tile_view.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/location_controller.dart';

class LocationView extends GetView<LocationController> {
  const LocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.system_color_gray_100,
      appBar: AppBar(
        backgroundColor: ZeplinColors.system_color_gray_100,
        leading: const BackButtonView(),
        title: const Text('Таны байршилд ойрхон'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GetBuilder<LocationController>(
            init: LocationController(),
            initState: (_) {},
            builder: (controller) {
              return GoogleMap(
                mapType: MapType.terrain,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(47.91895531747105, 106.91737420856954),
                  zoom: 15.4746,
                ),
                onMapCreated: (GoogleMapController _controller) {
                  controller.mapController = _controller;
                },
                zoomControlsEnabled: false,
                onTap: (LatLng latln) {
                  print(latln.toJson());
                },
                markers: [
                  Marker(
                    markerId: MarkerId("id:0"),
                    position: LatLng(47.91895531747105, 106.91737420856954),
                    infoWindow: InfoWindow(
                      title: "Салон 3",
                    ),
                    icon:
                        controller.customIcon ?? BitmapDescriptor.defaultMarker,
                    onTap: () {
                      controller.dssController.animateTo(
                        0.4,
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.easeInOut,
                      );
                    },
                  )
                ].toSet(),
              );
            },
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              controller: controller.dssController,
              initialChildSize: 0.0,
              minChildSize: 0.0,
              builder: (BuildContext context, ScrollController scroller) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    child: ListView.builder(
                      controller: scroller,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Center(
                            child: Container(
                              height: 6,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 166,
                                vertical: 16,
                              ),
                              decoration: BoxDecoration(
                                color: ZeplinColors.system_color_gray_300,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          );
                        }
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: SalonTileView(),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
