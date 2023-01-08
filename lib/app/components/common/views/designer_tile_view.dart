import 'package:beauty_app/app/components/common/views/cached_network_image_view.dart';
import 'package:beauty_app/app/components/review/views/review_star_view.dart';
import 'package:beauty_app/app/data/models/lut_user/lut_user.dart';
import 'package:beauty_app/app/data/models/user.dart';
import 'package:beauty_app/app/routes/app_pages.dart';
import 'package:beauty_app/app/utils/assets.dart';
import 'package:beauty_app/app/utils/color_cus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DesignerTileView extends GetView {
  LutUser? designer;
  List<Widget> children = [];
  MainAxisAlignment? mainAxisAlignment;
  bool? hasShadow;

  DesignerTileView({super.key, this.designer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          // aspectRatio: 2.3867,
          width: double.infinity,
          height: 130,
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.DETAIL);
                    },
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CachedNetworkImageView(
                        imageUrl: designer?.avatar?.uri ??
                        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.hwVDS6hfp4Nwdc9HJImycQHaHa%26pid%3DApi&f=1&ipt=57d470ddd662119cd81188d43b7d51fc82bf054dfc9c07af89c5912af69a45e1&ipo=images"
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
                        "${designer?.name}",
                        style: const TextStyle(
                          color: ZeplinColors.system_color_gray_900,
                          fontFamily: 'SFProDisplay',
                        ),
                      ),
                      const SizedBox(height: 4),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.DETAIL);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${designer?.email}",
                                style: const TextStyle(
                                  color: ZeplinColors.system_color_gray_500,
                                  fontSize: 12,
                                  fontFamily: 'SFProDisplay',
                                ),
                              ),
                              Row(
                                children: [
                                  const ReviewStarView(),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: ' 4.8 (125)  ',
                                          style: const TextStyle(
                                            color: ZeplinColors
                                                .system_color_gray_500,
                                            fontSize: 12,
                                            fontFamily: 'SFProDisplay',
                                          ),
                                        ),
                                        const TextSpan(
                                          text: '•',
                                          style: TextStyle(
                                            color: ZeplinColors
                                                .system_color_gray_400,
                                            fontSize: 12,
                                            fontFamily: 'SFProDisplay',
                                          ),
                                        ),
                                        TextSpan(
                                          text: '  ${designer?.organization?.name}',
                                          style: const TextStyle(
                                            color: ZeplinColors
                                                .system_color_gray_500,
                                            fontSize: 12,
                                            fontFamily: 'SFProDisplay',
                                          ),
                                        ),
                                      ],
                                    ),
                                    style: const TextStyle(
                                      color: ZeplinColors.system_color_gray_500,
                                      fontSize: 12,
                                      fontFamily: 'SFProDisplay',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                '35,000₮',
                style: TextStyle(
                  color: ZeplinColors.system_color_primary_600,
                  fontFamily: 'SFProDisplay',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
