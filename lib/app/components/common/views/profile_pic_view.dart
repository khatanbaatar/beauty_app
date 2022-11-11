import 'dart:io';

import 'package:beauty_app/app/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProfilePicView extends GetView {
  final File? file;
  final double? width;

  const ProfilePicView({
    super.key,
    this.file,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: file != null
          ? Image.file(file!, fit: BoxFit.fill, width: double.infinity)
          : CachedNetworkImage(
              fit: BoxFit.fill,
              // width: double.infinity,
              imageUrl:
                  "https://i.pinimg.com/736x/41/57/55/415755c2bbc770ee52e2b4dce35f6392.jpg",
              height: 100,
              width: width ?? 100,
              errorWidget: (context, text, _) => Image.asset(Assets.back),
            ),
    );
  }
}
