import 'package:flutter/material.dart';

class GastoForm extends StatelessWidget {
  final Function(String descripcion, double monto) onSubmit;

  const GastoForm({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final descController = TextEditingController();
    final montoController = TextEditingController();

    return Column(
      children: [
        TextField(
          controller: descController,
          decoration: const InputDecoration(labelText: 'Descripción'),
        ),
        TextField(
          controller: montoController,
          decoration: const InputDecoration(labelText: 'Monto'),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            final desc = descController.text;
            final monto = double.tryParse(montoController.text) ?? 0.0;
            onSubmit(desc, monto);
          },
          child: const Text('Agregar gasto'),
        )
      ],
    );
  }
}
