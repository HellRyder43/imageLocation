import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:geolocator/geolocator.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage(
      {Key? key, required this.picture, this.address, this.currentPosition})
      : super(key: key);

  final XFile picture;
  final String? address;
  final Position? currentPosition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preview Page')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.file(File(picture.path), fit: BoxFit.cover, width: 250),
          const SizedBox(height: 24),
          Text("Image name: " + picture.name),
          Text("Image address: " + address!),
          Text("Latitude: " + currentPosition!.latitude.toString()),
          Text("longitude: " + currentPosition!.longitude.toString()),
        ]),
      ),
    );
  }
}
