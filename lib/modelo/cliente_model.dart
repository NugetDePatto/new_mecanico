import 'package:hive_flutter/hive_flutter.dart';
import 'package:new_mecanico/utils/generate_code.dart';

import 'coche_model.dart';

@HiveType(typeId: 0)
class Cliente {
  @HiveField(0)
  String fechacreacion = DateTime.now().toString();
  @HiveField(1)
  String fechamodificacion = DateTime.now().toString();
  @HiveField(2)
  String id = generateCode(DateTime.now().toString());
  @HiveField(3)
  final String nombre;
  @HiveField(4)
  final String direccion;
  @HiveField(5)
  final String telefono;
  @HiveField(6)
  final List<Coche> coches;

  Cliente({
    String? fechacreacion,
    String? fechamodificacion,
    String? id,
    required this.nombre,
    required this.direccion,
    required this.telefono,
    required this.coches,
  }) {
    this.fechacreacion = fechacreacion ?? this.fechacreacion;
    this.fechamodificacion = fechamodificacion ?? this.fechamodificacion;
    this.id = id ?? this.id;
  }

  @override
  String toString() {
    return 'Cliente{fechacreacion: $fechacreacion, fechamodificacion: $fechamodificacion, id: $id, nombre: $nombre, direccion: $direccion, telefono: $telefono, coches: $coches}';
  }
}

class ClienteAdapter extends TypeAdapter<Cliente> {
  @override
  final int typeId = 0;

  @override
  Cliente read(BinaryReader reader) {
    return Cliente(
      fechacreacion: reader.readString(),
      fechamodificacion: reader.readString(),
      id: reader.readString(),
      nombre: reader.readString(),
      direccion: reader.readString(),
      telefono: reader.readString(),
      coches: reader.readList().cast<Coche>(),
    );
  }

  @override
  void write(BinaryWriter writer, Cliente obj) {
    writer.writeString(obj.fechacreacion);
    writer.writeString(obj.fechamodificacion);
    writer.writeString(obj.id);
    writer.writeString(obj.nombre);
    writer.writeString(obj.direccion);
    writer.writeString(obj.telefono);
    writer.writeList(obj.coches);
  }
}
