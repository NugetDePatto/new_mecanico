import 'package:flutter/material.dart';
import 'package:new_mecanico/controlador/clientes_controller.dart';
import 'package:new_mecanico/utils/apariencia_utils.dart';
import 'package:new_mecanico/widgets/tarjeta_cliente_widget.dart';

class ClientesView extends StatefulWidget {
  const ClientesView({super.key});

  @override
  State<ClientesView> createState() => _ClientesViewState();
}

class _ClientesViewState extends State<ClientesView> {
  ClienteController con = ClienteController();
  @override
  Widget build(BuildContext context) {
    return con.clientesOrdenados.isEmpty
        ? Center(
            child: Text(
              'No hay clientes',
              style: TextStyle(
                fontSize: getTamanoFuente(),
              ),
            ),
          )
        : ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: con.clientesOrdenados.length,
            itemBuilder: (BuildContext context, int index) {
              return TarjetaCliente(
                cliente: con.clientesOrdenados[index],
              );
            },
          );
  }
}
