import 'package:flutter/material.dart';

class GastoCard extends StatelessWidget {
  final String descripcion;
  final double monto;
  final String fecha;

  const GastoCard({
    super.key,
    required this.descripcion,
    required this.monto,
    required this.fecha,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        leading: const Icon(Icons.pets),
        title: Text(descripcion),
        subtitle: Text(fecha),
        trailing: Text('\$${monto.toStringAsFixed(2)}'),
      ),
    );
  }
}
