import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Harita görünümü
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(37.77483, -122.41942), // Başlangıç konumu, San Francisco
              zoom: 12,
            ),
            myLocationEnabled: true, // Kullanıcının konumunu göstermek için
            myLocationButtonEnabled: true, // Kullanıcının konumunu bulmak için buton
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          height: 60.0,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
