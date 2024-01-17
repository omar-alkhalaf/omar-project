import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapView extends StatefulWidget {
  final LocationData currentLocation;
  const MapView({super.key, required this.currentLocation});

  @override
  State<MapView> createState() => MapViewState();
}

class MapViewState extends State<MapView> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  late CameraPosition _kGooglePlex;

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  void initState() {
    _kGooglePlex = CameraPosition(
      target: LatLng(widget.currentLocation.latitude ?? 0.0,
          widget.currentLocation.longitude ?? 0.0),
      zoom: 14.4746,
    );
    super.initState();
  }

  //Set<Marker> markers = const {};

  List<Marker> markerList = [];
  LatLng? selectedLocation;

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        // onCameraMove: (position) {},
        mapType: MapType.satellite,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          markerList.add(Marker(
              markerId: MarkerId('current'),
              position: LatLng(widget.currentLocation.latitude ?? 0.0,
                  widget.currentLocation.longitude ?? 0.0)));

          markerList.add(Marker(
              icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueAzure),
              markerId: MarkerId('dest'),
              position: LatLng(34.8324267, 36.813695)));
          setState(() {});
        },
        markers: markerList.toSet(),
        onTap: (position) {
          markerList.add(Marker(
              icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueGreen),
              markerId: MarkerId('Point$index'),
              position: position));

          index++;
          setState(() {});
        },
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: const Text('To the lake!'),
      //   icon: const Icon(Icons.directions_boat),
      // ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
