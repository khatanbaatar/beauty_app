import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:beauty_app/app/utils/api_constants.dart';
import 'package:get/get.dart';

class CachedNetworkImageView extends GetView {
  final String? imageUrl;
  final BoxFit? fit;
  final int? width;
  final int? height;
  final double? borderRadius;

  const CachedNetworkImageView({
    this.imageUrl,
    this.fit,
    this.width,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: CachedNetworkImage(
        fit: fit ?? BoxFit.cover,
        imageUrl: imageUrl != null && imageUrl!.startsWith("/")
            ? ApiConstants.domain + imageUrl!
            : imageUrl ?? "",
        errorWidget: (context, url, error) => CachedNetworkImage(
          fit: fit ?? BoxFit.cover,
          imageUrl: "https://place-hold.it/${width ?? 358}x${height ?? 358}",
        ),
        placeholder: (context, url) => CachedNetworkImage(
          fit: fit ?? BoxFit.cover,
          imageUrl: "https://place-hold.it/${width ?? 358}x${height ?? 358}",
        ),
      ),
    );
  }
}
