import 'package:flutter/material.dart';
import '../../widgets/expenses/expense_card.dart';
import '../../widgets/expenses/form_expenses.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  List<Map<String, dynamic>> gastos = [];

  void agregarGasto(String descripcion, double monto) {
    setState(() {
      gastos.add({
        'descripcion': descripcion,
        'monto': monto,
        'fecha': DateTime.now().toString().split(' ')[0],
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mis gastos 😺')),
      body: Column(
        children: [
          GastoForm(onSubmit: agregarGasto),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: gastos.length,
              itemBuilder: (context, index) {
                final gasto = gastos[index];
                return GastoCard(
                  descripcion: gasto['descripcion'],
                  monto: gasto['monto'],
                  fecha: gasto['fecha'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
