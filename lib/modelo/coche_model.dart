import 'package:hive_flutter/hive_flutter.dart';
import 'package:new_mecanico/utils/generate_code.dart';

@HiveType(typeId: 1)
class Coche {
  @HiveField(0)
  String fechacreacion = DateTime.now().toString();
  @HiveField(1)
  String fechamodificacion = DateTime.now().toString();
  @HiveField(2)
  String id = generateCode(DateTime.now().toString());
  @HiveField(3)
  final String marca;
  @HiveField(4)
  final String modelo;
  @HiveField(5)
  final String anio;
  @HiveField(6)
  final String motor;
  @HiveField(7)
  final String color;
  @HiveField(8)
  final String vin;
  @HiveField(9)
  final String kilometraje;
  @HiveField(10)
  final String placa;

  Coche({
    String? fechacreacion,
    String? fechamodificacion,
    String? id,
    required this.marca,
    required this.modelo,
    required this.anio,
    required this.motor,
    required this.color,
    required this.vin,
    required this.kilometraje,
    required this.placa,
  }) {
    this.fechacreacion = fechacreacion ?? this.fechacreacion;
    this.fechamodificacion = fechamodificacion ?? this.fechamodificacion;
    this.id = id ?? this.id;
  }

  @override
  String toString() {
    return 'Coche{fechacreacion: $fechacreacion, fechamodificacion: $fechamodificacion, id: $id, marca: $marca, modelo: $modelo, anio: $anio, motor: $motor, color: $color, vin: $vin, kilometraje: $kilometraje, placa: $placa}';
  }
}

class CocheAdapter extends TypeAdapter<Coche> {
  @override
  final int typeId = 1;

  @override
  Coche read(BinaryReader reader) {
    return Coche(
      fechacreacion: reader.readString(),
      fechamodificacion: reader.readString(),
      id: reader.readString(),
      marca: reader.readString(),
      modelo: reader.readString(),
      anio: reader.readString(),
      motor: reader.readString(),
      color: reader.readString(),
      vin: reader.readString(),
      kilometraje: reader.readString(),
      placa: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, Coche obj) {
    writer.writeString(obj.fechacreacion);
    writer.writeString(obj.fechamodificacion);
    writer.writeString(obj.id);
    writer.writeString(obj.marca);
    writer.writeString(obj.modelo);
    writer.writeString(obj.anio);
    writer.writeString(obj.motor);
    writer.writeString(obj.color);
    writer.writeString(obj.vin);
    writer.writeString(obj.kilometraje);
    writer.writeString(obj.placa);
  }
}
