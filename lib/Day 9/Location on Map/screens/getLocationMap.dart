import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class getLocationMap extends StatefulWidget {
  const getLocationMap({super.key});

  @override
  State<getLocationMap> createState() => _getLocationMapState();
}

class _getLocationMapState extends State<getLocationMap> {
  Future<Position> getUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openAppSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  final Completer<GoogleMapController> _controller = Completer();

  CameraPosition _cameraPosition =
      CameraPosition(target: LatLng(45.521563, -122.677433), zoom: 17);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  final List<Marker> _markers = [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(45.521563, -122.677433),
        infoWindow: InfoWindow(title: "Your Current Location")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: GoogleMap(
          markers: Set<Marker>.of(_markers),
          onMapCreated: _onMapCreated,
          initialCameraPosition: _cameraPosition),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getUserLocation().then((value) async {
            _markers.add(Marker(
                markerId: MarkerId('2'),
                position: LatLng(value.latitude, value.longitude),
                infoWindow: InfoWindow(
                    title: "Your Current Location",
                    snippet: "${value.latitude}, ${value.longitude}")));

            CameraPosition cameraPosition = CameraPosition(
                target: LatLng(value.latitude, value.longitude), zoom: 17);
            final GoogleMapController controller = await _controller.future;
            controller
                .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
            setState(() {});
          });
        },
        child: Icon(Icons.location_city),
      ),
    );
  }
}
