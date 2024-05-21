class TespitModel {
  int id;
  String x;
  String y;
  DateTime tespitZamani;
  String tespitFotografi;

  TespitModel(this.id, this.x, this.y, this.tespitZamani, this.tespitFotografi);

  factory TespitModel.fromJson(Map<String, dynamic> json) {
    return TespitModel(json['id'], json['xKoordinatı'], json['ykoordinatı'], 
    json['tespitZamani'],json['tespitFotografi']); //TODO: yapilacak
  }

  Map<String,dynamic> toJson(){
    Map<String,dynamic> json = {};
    json['id'] = id;
    json['xKoordinatı'] = x;
    json['ykoordinatı'] = y;
    json['tespitZamani'] = tespitZamani;
    json['tespitFotografi'] = tespitFotografi;

    return json;
    }

  
}
