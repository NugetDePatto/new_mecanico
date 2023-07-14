import 'package:flutter/material.dart';
import '../modelo/cliente_model.dart';

class TarjetaCliente extends StatefulWidget {
  final Cliente cliente;
  //funcion vacia
  final VoidCallback? onTap;
  const TarjetaCliente({super.key, required this.cliente, this.onTap});

  @override
  State<TarjetaCliente> createState() => _TarjetaClienteState();
}

class _TarjetaClienteState extends State<TarjetaCliente> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Container(
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
            ),
            Text(
              widget.cliente.telefono,
            ),
          ],
        ),
      ),
    );
  }
}
