import 'package:hive_flutter/adapters.dart';
import 'package:new_mecanico/modelo/cliente_model.dart';

class ClienteController {
  Box<Cliente> clientesBox = Hive.box<Cliente>('clientes');

  List<Cliente> get clientes => clientesBox.values.toList();

  List<Cliente> get clientesOrdenados {
    List<Cliente> clientesOrdenados = [];
    clientesOrdenados.addAll(clientes);
    clientesOrdenados.sort((a, b) => a.nombre.compareTo(b.nombre));
    return clientesOrdenados;
  }

  void eliminarCliente(Cliente cliente) {
    clientesBox.delete(cliente.id);
  }
}
