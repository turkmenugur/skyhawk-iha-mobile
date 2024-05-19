class TespitModel {
  int id;
  String x;
  String y;
  DateTime tespitZamani;
  String tespitFotografi;

  TespitModel(
    this.id,
    this.x,
    this.y,
    this.tespitZamani,
    this.tespitFotografi
  );

  factory TespitModel.fromJson(Map <String,dynamic> json){
    return TespitModel(json['id'], json['x'], y, tespitZamani, tespitFotografi) //TODO: yapilacak
  }
  
}
