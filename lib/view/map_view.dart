import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Location
    LatLng initialLocation = LatLng(37.77483, -122.41942); // San Francisco
    // Markers listesi
    Set<Marker> markers = {
      Marker(
        markerId: MarkerId('initial_location'),
        position: initialLocation,
        icon: BitmapDescriptor.defaultMarker, // Varsayılan pin ikonu
        infoWindow: InfoWindow(
          //Adress detayları yazılacak
          title: 'Başlangıç Konumu',
          snippet: 'San Francisco',
        ),
      ),
    };
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Harita görünümü
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: initialLocation, // Başlangıç konumu, San Francisco
              zoom: 12,
            ),
            myLocationEnabled: true, // Kullanıcının konumunu göstermek için
            myLocationButtonEnabled: true, // Kullanıcının konumunu bulmak için buton
            markers: markers,
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
