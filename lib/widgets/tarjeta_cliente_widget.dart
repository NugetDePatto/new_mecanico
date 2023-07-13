import 'package:flutter/material.dart';
import 'package:new_mecanico/utils/apariencia_utils.dart';
import '../modelo/cliente_model.dart';

class TarjetaCliente extends StatefulWidget {
  final Cliente cliente;
  const TarjetaCliente({super.key, required this.cliente});

  @override
  State<TarjetaCliente> createState() => _TarjetaClienteState();
}

class _TarjetaClienteState extends State<TarjetaCliente> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).buttonTheme.colorScheme!.secondaryContainer,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.cliente.nombre,
            style: TextStyle(
              fontSize: getTamanoFuente(),
            ),
          ),
          Text(widget.cliente.telefono),
        ],
      ),
    );
  }
}
