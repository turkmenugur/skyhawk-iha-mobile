class TespitModel {
  int id;
  String? x;
  String? y;
  String tespitZamani;
  String? tespitFotografi;

  TespitModel(this.id, this.x, this.y, this.tespitZamani, this.tespitFotografi);

  factory TespitModel.fromJson(Map<String, dynamic> json) {
    print('id: ${json['id'].runtimeType}');
    print('xKoordinatı: ${json['xKoordinatı'].runtimeType}');
    print('ykoordinatı: ${json['ykoordinatı'].runtimeType}');
    print('tespitZamani: ${json['tespitZamani'].runtimeType}');
    print('tespitFotografi: ${json['tespitFotografi'].runtimeType}');

  
    return TespitModel(json['id'], json['xKoordinatı'].toString(), json['ykoordinatı'].toString(),
        json['tespitZamani'], json['tespitFotografi']); //TODO: yapilacak
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = id;
    json['xKoordinatı'] = x;
    json['ykoordinatı'] = y;
    json['tespitZamani'] = tespitZamani;
    json['tespitFotografi'] = tespitFotografi;

    return json;
  }

}

