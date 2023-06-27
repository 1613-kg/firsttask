import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class getLocation extends StatefulWidget {
  const getLocation({super.key});

  @override
  State<getLocation> createState() => _getLocationState();
}

class _getLocationState extends State<getLocation> {
  String lon = "Click on below button";
  String lat = "Click on below button";
  String address = "Click on below button";

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

  Future<void> getAddress(Position position) async {
    List<Placemark> placemark =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemark[0];
    address =
        "${place.street} , ${place.locality} , ${place.name} , ${place.postalCode} , ${place.country}";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Location"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Longitude: $lon'),
            const SizedBox(
              height: 20,
            ),
            Text('Latitude: ${lat}'),
            const SizedBox(
              height: 20,
            ),
            Text('Address: ${address}'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("Detect my Location"),
              onPressed: () async {
                Position position = await getUserLocation();

                lat = position.latitude.toString();
                lon = position.longitude.toString();

                getAddress(position);

                // setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
