import 'package:flutter/material.dart';
import 'package:skyhawk_iha/service/call_helper.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Location
    LatLng initialLocation = LatLng(37.77483, -122.41942); // San Francisco
    // Markers listesi
    List<Marker> markers = [
      Marker(
        width: 80.0,
        height: 80.0,
        point: initialLocation,
        child: Icon(Icons.location_pin, color: Colors.red, size: 40),
        ),
    ];
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Harita görünümü
          FlutterMap(
            options: MapOptions(
              center: initialLocation,
              zoom: 12.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: markers,
              ),
            ],
          ),
          // Buton
          Positioned(
            left: 0,
            right: 0,
            bottom: 16, // Haritanın altından 16 piksel yukarıda
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Butonun yapacağı işlemler
                  CallHelper.showCallPopup(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Butonun rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Yuvarlatılmış köşeler
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.phone, color: Colors.white), // Telefon simgesi beyaz renk
                    SizedBox(width: 8), // Simge ve metin arasında boşluk
                    Text(
                      'Acil çağrı',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
