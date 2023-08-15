import 'package:meta/meta.dart';

class ScanModel {
    
    late int id;
    late String tipo;
    late String valor;

    ScanModel({
        id,
        tipo,
        @required valor,
    }){
      if(tipo.contains('http')){
        tipo = 'http';
      }else{
        tipo = 'geo';
      }
    }

    factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
    };
}
