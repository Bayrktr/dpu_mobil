import 'dart:io'; // For file images
import 'dart:typed_data'; // For memory images

import 'package:dpu_mobil/app/core/extention/build_context/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    required this.imageFrom,
    required this.imageType,
    super.key,
    this.assetPath,
    this.networkUrl,
    this.file,
    this.memoryImage,
    this.color,
    this.width = 50.0,
    this.height = 50.0,
    this.radius,
    this.fit,
  }) : assert(
          (imageFrom == ImageFrom.ASSET && assetPath != null) ||
              (imageFrom == ImageFrom.NETWORK && networkUrl != null) ||
              (imageFrom == ImageFrom.FILE && file != null) ||
              (imageFrom == ImageFrom.MEMORY && memoryImage != null),
          'Correct parameters must be provided for the selected image source',
        );
  final ImageFrom imageFrom;
  final ImageType imageType;
  final String? assetPath;
  final String? networkUrl;
  final File? file;
  final Uint8List? memoryImage;
  final double width;
  final double height;
  final Color? color;
  final double? radius;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    switch (imageType) {
      case ImageType.PNG:
        switch (imageFrom) {
          case ImageFrom.ASSET:
            return Image.asset(
              assetPath!,
              height: radius ?? height,
              width: radius ?? width,
              fit: fit,
            ); // assetPath is required if ASSET
          case ImageFrom.NETWORK:
            return Image.network(
              networkUrl!,
              height: radius ?? height,
              width: radius ?? width,
              errorBuilder: (context, object, stack) {
                return Icon(
                  Icons.error,
                  color: context.theme.disabledColor,
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ); // networkUrl is required if NETWORK
          case ImageFrom.FILE:
            return Image.file(
              file!,
              height: radius ?? height,
              width: radius ?? width,
            ); // file is required if FILE
          case ImageFrom.MEMORY:
            return Image.memory(
              memoryImage!,
              height: radius ?? height,
              width: radius ?? width,
            ); // memoryImage is required if MEMORY
          default:
            return const SizedBox
                .shrink(); // Fallback to an empty widget if nothing is provided
        }
      case ImageType.SVG:
        switch (imageFrom) {
          case ImageFrom.ASSET:
            return SvgPicture.asset(
              assetPath!,
              height: radius ?? height,
              width: radius ?? width,
              color: color, // fixme
            );
          case ImageFrom.NETWORK:
            return SvgPicture.network(
              networkUrl!,
              height: radius ?? height,
              width: radius ?? width,
            );
          case ImageFrom.FILE:
            return SvgPicture.file(
              file!,
              height: radius ?? height,
              width: radius ?? width,
            );
          case ImageFrom.MEMORY:
            return SvgPicture.memory(
              memoryImage!,
              height: radius ?? height,
              width: radius ?? width,
            );
        }
    }
  }
}

enum ImageFrom { ASSET, NETWORK, FILE, MEMORY }

enum ImageType { PNG, SVG }
