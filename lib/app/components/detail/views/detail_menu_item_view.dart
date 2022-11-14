import 'package:beauty_app/app/components/common/views/cached_network_image_view.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailMenuItemView extends GetView {
  const DetailMenuItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: ZeplinColors.system_color_gray_200),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          // aspectRatio: 2.3867,
          width: double.infinity,
          height: 150,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      // width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: CachedNetworkImageView(
                        fit: BoxFit.fill,
                        imageUrl:
                            "https://i.pinimg.com/736x/41/57/55/415755c2bbc770ee52e2b4dce35f6392.jpg",
                        height: 100,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Үс тайралт, үс будалт хамт',
                        style: TextStyle(
                          color: ZeplinColors.system_color_gray_700,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Тайралт / Будалт',
                              style: TextStyle(
                                color: ZeplinColors.system_color_gray_500,
                                fontSize: 10,
                                fontFamily: 'SFProDisplay',
                              ),
                            ),
                            Text(
                              '85,000 ~ 120,000₮',
                              style: TextStyle(
                                color: ZeplinColors.system_color_primary_700,
                                fontSize: 12,
                                fontFamily: 'SFProDisplay',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
