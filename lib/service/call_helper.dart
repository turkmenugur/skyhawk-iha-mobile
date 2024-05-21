import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CallHelper {
  static void showCallPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return _buildPopupDialog(context);
      },
    );
  }

  static Widget _buildPopupDialog(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Çağrı Yapılıyor...',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Lottie.asset(
            'assets/animations/call_animation.json', // Lottie animasyon dosyasının yolu
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text('İptal', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
