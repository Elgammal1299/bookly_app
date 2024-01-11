import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AssetsData.itemImage),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
      ),
    );
  }
}