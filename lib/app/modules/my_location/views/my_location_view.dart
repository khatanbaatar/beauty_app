import 'package:beauty_app/app/components/common/views/back_button_view.dart';
import 'package:beauty_app/app/components/common/views/salon_tile_view.dart';
import 'package:beauty_app/app/components/common/views/svg_asset_view.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/my_location_controller.dart';

class MyLocationView extends GetView<MyLocationController> {
  const MyLocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZeplinColors.system_color_gray_100,
      appBar: AppBar(
        backgroundColor: ZeplinColors.system_color_gray_100,
        leading: const BackButtonView(),
        title: const Text('Миний байршил'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GetBuilder<MyLocationController>(
            init: MyLocationController(),
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
                      controller
                          .goTo(LatLng(47.91895531747105, 106.91737420856954));
                      controller.dssController.animateTo(
                        0.6,
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
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListView(
                      controller: scroller,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Detail address',
                              style: TextStyle(
                                color: ZeplinColors.system_color_gray_900,
                                fontSize: 20,
                                fontFamily: 'SFProDisplay',
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () => Get.back(),
                              icon: const SvgAsset(Assets.location),
                            ),
                          ],
                        ),
                        ListTile(
                          leading: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ZeplinColors.system_color_primary_50,
                            ),
                            child: const IconButton(
                              icon: SvgAsset(Assets.mapCheck),
                              onPressed: null,
                            ),
                          ),
                          title: const Text(
                            'Амарсанаагийн гудамж, Улаанбаатар',
                            style: TextStyle(
                              color: ZeplinColors.system_color_gray_900,
                              fontSize: 16,
                              fontFamily: 'SFProDisplay',
                            ),
                          ),
                          subtitle: const Text(
                            'Gobi Cave Turkish Restaurant, Амарсанаагийн гудамж, Ulaanbaatar',
                            style: TextStyle(
                              color: ZeplinColors.system_color_gray_600,
                              fontFamily: 'SFProDisplay',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          width: 100,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              'Өөрчлөх',
                              style: TextStyle(
                                color: Color(0xff483dd0),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const Divider(),
                        const Text(
                          'Save address as',
                          style: TextStyle(
                            color: ZeplinColors.system_color_gray_900,
                            fontSize: 20,
                            fontFamily: 'SFProDisplay',
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(4),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: ZeplinColors.system_color_primary_100,
                              ),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Home",
                                      style: TextStyle(
                                        color: ZeplinColors
                                            .system_color_primary_800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(4),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                                border: Border.all(
                                  color: ZeplinColors.system_color_gray_300,
                                ),
                              ),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    Text("Office"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                ZeplinColors.system_color_primary_600,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Баталгаажуулах',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
